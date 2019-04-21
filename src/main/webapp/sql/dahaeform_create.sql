-- ----------------------------------<CREATE 시작>---------------------------------------
show tables;
-- ----------------------------------------------------------회원 sheet
-- 회원가입
CREATE TABLE member(
	 m_email VARCHAR(40) NOT NULL               -- 이메일
	,m_name  VARCHAR(30) NOT NULL               -- 이름
	,m_pw    VARCHAR(20) NOT NULL               -- 비밀번호
	,m_date  DATETIME    NOT NULL DEFAULT NOW() -- 가입일
	,m_level CHAR(3)     DEFAULT 'C'            -- 등급
	,PRIMARY KEY(m_email) 
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- -----------------------------------------------------------설문지 sheet
-- 설문지 관리
CREATE TABLE qnaire(
	 q_sheetcode CHAR(5)      NOT NULL           -- 설문지코드
	,m_email     VARCHAR(40)  NOT NULL           -- 이메일
	,q_title     VARCHAR(255) NOT NULL           -- 제목
	,q_pw        VARCHAR(10)  NULL               -- 비밀번호
	,q_url       CHAR(35)     NULL               -- URL
	,q_startdate VARCHAR(20)  NULL               -- 설문 시작일
	,q_enddate   VARCHAR(20)  NULL               -- 설문 마감일
	,q_maxp      INT          NULL               -- 최대 인원수
	,q_public    CHAR(3)      NULL DEFAULT 'N'   -- 공개여부
	,q_dupli     CHAR(3)      NULL DEFAULT 'N'   -- 중복설문
	,q_ing       CHAR(3)      NULL DEFAULT 'N'   -- 진행여부
	,q_date      DATETIME     NULL DEFAULT NOW() -- 등록일
	,PRIMARY KEY(q_sheetcode)
	,FOREIGN KEY(m_email) REFERENCES member (m_email)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";
-- ALTER TABLE qnaire MODIFY COLUMN q_sheetcode CHAR(5) NOT NULL;

-- 설문지별 질문 관리
CREATE TABLE d_qnaire(
	dq_code      INT          NOT NULL				-- 설문지 상세코드
	,m_email     VARCHAR(40)  NOT NULL				-- 이메일
	,q_sheetcode CHAR(5)      NOT NULL				-- 설문지 코드
	,dq_type     VARCHAR(10)  NOT NULL				-- 질문유형
	,dq_order    VARCHAR(10)  NOT NULL				-- 순서 코드
	,dq_que      VARCHAR(255) NOT NULL				-- 질문
	,dq_req      CHAR(3)      NOT NULL DEFAULT 'Y'	-- 답변필수
	,PRIMARY KEY(dq_code)
	,FOREIGN KEY(m_email) REFERENCES member (m_email)
	,FOREIGN KEY(q_sheetcode) REFERENCES qnaire (q_sheetcode)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- -----------------------------------------------------------질문유형 sheet
-- 객관식 질문
CREATE TABLE dgaeck_qnaire(
	 dgaeck_num INT NOT NULL									-- 일련번호
	,dq_code INT NOT NULL										-- 설문지 상세코드
	,dgaeck_jumsu CHAR(3) NOT NULL DEFAULT 'N'					-- 점수배정
	,dgaeck_ect CHAR(3) NOT NULL DEFAULT 'N'					-- 기타
	,dgaeck_min INT NOT NULL DEFAULT 1							-- 중복선택가능개수(최소)
	,dgaeck_max INT NOT NULL DEFAULT 1							-- 중복선택가능개수(최대)
	,PRIMARY KEY(dgaeck_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 객관식 선택지
CREATE TABLE dsun_qnaire(
	 dsun_code   INT NOT NULL			-- 선택지 코드
	,dq_code     INT NOT NULL			-- 설문지 상세코드
	,dsun_choice VARCHAR(60) NOT NULL	-- 선택지
	,dsun_jumsu  INT					-- 배정점수
	,dsun_order  INT NOT NULL			-- 순서
	,PRIMARY KEY(dsun_code)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 순위별 가중치
CREATE TABLE gajoong(
	 gajoong_num    INT NOT NULL	-- 일련번호
	,dq_code        INT NOT NULL	-- 설문지 상세코드
	,gajoong_soon   INT NOT NULL	-- 순위
	,gajoong_weight INT NOT NULL	-- 가중치
	,PRIMARY KEY(gajoong_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 별점형 질문
CREATE TABLE dstar_qnaire(
	 dstar_num      INT     NOT NULL				-- 일련번호
	,dq_code        INT     NOT NULL				-- 설문지 상세코드
	,dstar_jumsu    CHAR(3) NOT NULL DEFAULT 'Y'	-- 점수표시(Y: 점수표시, N: !Y)
	,dstar_score    INT     NOT NULL				-- 별점단계(3|5|10)
	,PRIMARY KEY(dstar_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 척도형 질문
CREATE TABLE dchuck_qnaire(
	 dchuck_num   INT		  NOT NULL	-- 일련번호
	,dq_code      INT		  NOT NULL	-- 설문지 상세코드
	,dchuck_jumsu INT		  NOT NULL	-- 시작점수(0|-5), 단계: 11 
	,dchuck_msg   VARCHAR(80)			-- 척도문구
	,PRIMARY KEY(dchuck_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 주관식 질문
CREATE TABLE dju_qnaire(
	 dju_num    INT         NOT NULL			-- 일련번호
	,dq_code    INT		    NOT NULL			-- 설문지 상세코드
	,dju_length INT         NOT NULL DEFAULT 50	-- 글자 수
	,dju_msg    VARCHAR(255)					-- 안내문구
	,PRIMARY KEY(dju_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- -----------------------------------------------------------답변 sheet
-- 답변 관리
CREATE TABLE answer(
	 a_code VARCHAR(12) NOT NULL			-- 답변자 코드
	,q_sheetcode CHAR(5)      NOT NULL		-- 설문지 코드
	,a_ip VARCHAR(20) NOT NULL				-- IP
	,a_date DATETIME NOT NULL DEFAULT NOW()	-- 등록일
	,PRIMARY KEY(a_code)
	,FOREIGN KEY(q_sheetcode) REFERENCES qnaire (q_sheetcode)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 선택형 답변
CREATE TABLE dsel_answer(
	 dsel_num  INT			NOT NULL -- 일련번호
	,dq_code   INT		    NOT NULL -- 설문지 상세코드
	,a_code    VARCHAR(12)	NOT NULL -- 답변자 코드
	,dsun_code INT			NOT NULL -- 선택지 코드
	,PRIMARY KEY(dsel_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
	,FOREIGN KEY(a_code) REFERENCES answer (a_code)
	,FOREIGN KEY(dsun_code) REFERENCES dsun_qnaire (dsun_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 순위형 답변
CREATE TABLE drank_answer(
	 drank_num  INT 		NOT NULL -- 일련번호
	,dq_code    INT		    NOT NULL -- 설문지 상세코드
	,a_code     VARCHAR(12)	NOT NULL -- 답변자 코드
	,dsun_code  INT			NOT NULL -- 선택지 코드
	,drank_soon INT 		NOT NULL -- 순위
	,PRIMARY KEY(drank_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
	,FOREIGN KEY(a_code) REFERENCES answer (a_code)
	,FOREIGN KEY(dsun_code) REFERENCES dsun_qnaire (dsun_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 별점/척도형 답변
CREATE TABLE dscale_answer(
	 dscale_num   INT 			NOT NULL -- 일련번호
	,dq_code      INT		    NOT NULL -- 설문지 상세코드
	,a_code       VARCHAR(12)	NOT NULL -- 답변자 코드
	,dscale_score INT 			NOT NULL -- 점수
	,PRIMARY KEY(dscale_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
	,FOREIGN KEY(a_code) REFERENCES answer (a_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- 주관식/기타 답변
CREATE TABLE dju_answer(
	 dju_num     INT 		 NOT NULL -- 일련번호
	,dq_code     INT		 NOT NULL -- 설문지 상세코드
	,a_code      VARCHAR(12) NOT NULL -- 답변자 코드
	,dju_content TEXT(60000) NOT NULL -- 답변내용
	,PRIMARY KEY(dju_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
	,FOREIGN KEY(a_code) REFERENCES answer (a_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- -----------------------------------------------------------게시판 sheet
-- 공지사항/Q&A 게시판
CREATE TABLE board(
	 bbsno    INT          NOT NULL					-- 일련번호
	,wname    VARCHAR(20)  NOT NULL 				-- 작성자
	,subject  VARCHAR(100) NOT NULL 				-- 글제목
	,content  TEXT(4000)   NOT NULL 				-- 글내용
	,passwd   VARCHAR(10)  NOT NULL 				-- 글비밀번호
	,readcnt  INT          NOT NULL DEFAULT 0		-- 글조회수
	,regdt    DATETIME              DEFAULT NOW()	-- 글작성일
	,grpno    INT          NOT NULL 			 	-- 그룹번호
	,indent   INT                   DEFAULT 0 		-- 들여쓰기
	,ansnum   INT                   DEFAULT 0 		-- 글순서
	,ip       VARCHAR(15)  NOT NULL 				-- 글 IP
	,sort     INT          NOT NULL DEFAULT 0       -- 구분(Q&A : 0, 공지사항 : 1)
	,PRIMARY KEY(bbsno)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";
-- ----------------------------------<CREATE 끝>-----------------------------------------