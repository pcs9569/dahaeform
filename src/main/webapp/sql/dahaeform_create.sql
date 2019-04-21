-- ----------------------------------<CREATE ����>---------------------------------------
show tables;
-- ----------------------------------------------------------ȸ�� sheet
-- ȸ������
CREATE TABLE member(
	 m_email VARCHAR(40) NOT NULL               -- �̸���
	,m_name  VARCHAR(30) NOT NULL               -- �̸�
	,m_pw    VARCHAR(20) NOT NULL               -- ��й�ȣ
	,m_date  DATETIME    NOT NULL DEFAULT NOW() -- ������
	,m_level CHAR(3)     DEFAULT 'C'            -- ���
	,PRIMARY KEY(m_email) 
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- -----------------------------------------------------------������ sheet
-- ������ ����
CREATE TABLE qnaire(
	 q_sheetcode CHAR(5)      NOT NULL           -- �������ڵ�
	,m_email     VARCHAR(40)  NOT NULL           -- �̸���
	,q_title     VARCHAR(255) NOT NULL           -- ����
	,q_pw        VARCHAR(10)  NULL               -- ��й�ȣ
	,q_url       CHAR(35)     NULL               -- URL
	,q_startdate VARCHAR(20)  NULL               -- ���� ������
	,q_enddate   VARCHAR(20)  NULL               -- ���� ������
	,q_maxp      INT          NULL               -- �ִ� �ο���
	,q_public    CHAR(3)      NULL DEFAULT 'N'   -- ��������
	,q_dupli     CHAR(3)      NULL DEFAULT 'N'   -- �ߺ�����
	,q_ing       CHAR(3)      NULL DEFAULT 'N'   -- ���࿩��
	,q_date      DATETIME     NULL DEFAULT NOW() -- �����
	,PRIMARY KEY(q_sheetcode)
	,FOREIGN KEY(m_email) REFERENCES member (m_email)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";
-- ALTER TABLE qnaire MODIFY COLUMN q_sheetcode CHAR(5) NOT NULL;

-- �������� ���� ����
CREATE TABLE d_qnaire(
	dq_code      INT          NOT NULL				-- ������ ���ڵ�
	,m_email     VARCHAR(40)  NOT NULL				-- �̸���
	,q_sheetcode CHAR(5)      NOT NULL				-- ������ �ڵ�
	,dq_type     VARCHAR(10)  NOT NULL				-- ��������
	,dq_order    VARCHAR(10)  NOT NULL				-- ���� �ڵ�
	,dq_que      VARCHAR(255) NOT NULL				-- ����
	,dq_req      CHAR(3)      NOT NULL DEFAULT 'Y'	-- �亯�ʼ�
	,PRIMARY KEY(dq_code)
	,FOREIGN KEY(m_email) REFERENCES member (m_email)
	,FOREIGN KEY(q_sheetcode) REFERENCES qnaire (q_sheetcode)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- -----------------------------------------------------------�������� sheet
-- ������ ����
CREATE TABLE dgaeck_qnaire(
	 dgaeck_num INT NOT NULL									-- �Ϸù�ȣ
	,dq_code INT NOT NULL										-- ������ ���ڵ�
	,dgaeck_jumsu CHAR(3) NOT NULL DEFAULT 'N'					-- ��������
	,dgaeck_ect CHAR(3) NOT NULL DEFAULT 'N'					-- ��Ÿ
	,dgaeck_min INT NOT NULL DEFAULT 1							-- �ߺ����ð��ɰ���(�ּ�)
	,dgaeck_max INT NOT NULL DEFAULT 1							-- �ߺ����ð��ɰ���(�ִ�)
	,PRIMARY KEY(dgaeck_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- ������ ������
CREATE TABLE dsun_qnaire(
	 dsun_code   INT NOT NULL			-- ������ �ڵ�
	,dq_code     INT NOT NULL			-- ������ ���ڵ�
	,dsun_choice VARCHAR(60) NOT NULL	-- ������
	,dsun_jumsu  INT					-- ��������
	,dsun_order  INT NOT NULL			-- ����
	,PRIMARY KEY(dsun_code)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- ������ ����ġ
CREATE TABLE gajoong(
	 gajoong_num    INT NOT NULL	-- �Ϸù�ȣ
	,dq_code        INT NOT NULL	-- ������ ���ڵ�
	,gajoong_soon   INT NOT NULL	-- ����
	,gajoong_weight INT NOT NULL	-- ����ġ
	,PRIMARY KEY(gajoong_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- ������ ����
CREATE TABLE dstar_qnaire(
	 dstar_num      INT     NOT NULL				-- �Ϸù�ȣ
	,dq_code        INT     NOT NULL				-- ������ ���ڵ�
	,dstar_jumsu    CHAR(3) NOT NULL DEFAULT 'Y'	-- ����ǥ��(Y: ����ǥ��, N: !Y)
	,dstar_score    INT     NOT NULL				-- �����ܰ�(3|5|10)
	,PRIMARY KEY(dstar_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- ô���� ����
CREATE TABLE dchuck_qnaire(
	 dchuck_num   INT		  NOT NULL	-- �Ϸù�ȣ
	,dq_code      INT		  NOT NULL	-- ������ ���ڵ�
	,dchuck_jumsu INT		  NOT NULL	-- ��������(0|-5), �ܰ�: 11 
	,dchuck_msg   VARCHAR(80)			-- ô������
	,PRIMARY KEY(dchuck_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- �ְ��� ����
CREATE TABLE dju_qnaire(
	 dju_num    INT         NOT NULL			-- �Ϸù�ȣ
	,dq_code    INT		    NOT NULL			-- ������ ���ڵ�
	,dju_length INT         NOT NULL DEFAULT 50	-- ���� ��
	,dju_msg    VARCHAR(255)					-- �ȳ�����
	,PRIMARY KEY(dju_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- -----------------------------------------------------------�亯 sheet
-- �亯 ����
CREATE TABLE answer(
	 a_code VARCHAR(12) NOT NULL			-- �亯�� �ڵ�
	,q_sheetcode CHAR(5)      NOT NULL		-- ������ �ڵ�
	,a_ip VARCHAR(20) NOT NULL				-- IP
	,a_date DATETIME NOT NULL DEFAULT NOW()	-- �����
	,PRIMARY KEY(a_code)
	,FOREIGN KEY(q_sheetcode) REFERENCES qnaire (q_sheetcode)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- ������ �亯
CREATE TABLE dsel_answer(
	 dsel_num  INT			NOT NULL -- �Ϸù�ȣ
	,dq_code   INT		    NOT NULL -- ������ ���ڵ�
	,a_code    VARCHAR(12)	NOT NULL -- �亯�� �ڵ�
	,dsun_code INT			NOT NULL -- ������ �ڵ�
	,PRIMARY KEY(dsel_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
	,FOREIGN KEY(a_code) REFERENCES answer (a_code)
	,FOREIGN KEY(dsun_code) REFERENCES dsun_qnaire (dsun_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- ������ �亯
CREATE TABLE drank_answer(
	 drank_num  INT 		NOT NULL -- �Ϸù�ȣ
	,dq_code    INT		    NOT NULL -- ������ ���ڵ�
	,a_code     VARCHAR(12)	NOT NULL -- �亯�� �ڵ�
	,dsun_code  INT			NOT NULL -- ������ �ڵ�
	,drank_soon INT 		NOT NULL -- ����
	,PRIMARY KEY(drank_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
	,FOREIGN KEY(a_code) REFERENCES answer (a_code)
	,FOREIGN KEY(dsun_code) REFERENCES dsun_qnaire (dsun_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- ����/ô���� �亯
CREATE TABLE dscale_answer(
	 dscale_num   INT 			NOT NULL -- �Ϸù�ȣ
	,dq_code      INT		    NOT NULL -- ������ ���ڵ�
	,a_code       VARCHAR(12)	NOT NULL -- �亯�� �ڵ�
	,dscale_score INT 			NOT NULL -- ����
	,PRIMARY KEY(dscale_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
	,FOREIGN KEY(a_code) REFERENCES answer (a_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- �ְ���/��Ÿ �亯
CREATE TABLE dju_answer(
	 dju_num     INT 		 NOT NULL -- �Ϸù�ȣ
	,dq_code     INT		 NOT NULL -- ������ ���ڵ�
	,a_code      VARCHAR(12) NOT NULL -- �亯�� �ڵ�
	,dju_content TEXT(60000) NOT NULL -- �亯����
	,PRIMARY KEY(dju_num)
	,FOREIGN KEY(dq_code) REFERENCES d_qnaire (dq_code)
	,FOREIGN KEY(a_code) REFERENCES answer (a_code)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";

-- -----------------------------------------------------------�Խ��� sheet
-- ��������/Q&A �Խ���
CREATE TABLE board(
	 bbsno    INT          NOT NULL					-- �Ϸù�ȣ
	,wname    VARCHAR(20)  NOT NULL 				-- �ۼ���
	,subject  VARCHAR(100) NOT NULL 				-- ������
	,content  TEXT(4000)   NOT NULL 				-- �۳���
	,passwd   VARCHAR(10)  NOT NULL 				-- �ۺ�й�ȣ
	,readcnt  INT          NOT NULL DEFAULT 0		-- ����ȸ��
	,regdt    DATETIME              DEFAULT NOW()	-- ���ۼ���
	,grpno    INT          NOT NULL 			 	-- �׷��ȣ
	,indent   INT                   DEFAULT 0 		-- �鿩����
	,ansnum   INT                   DEFAULT 0 		-- �ۼ���
	,ip       VARCHAR(15)  NOT NULL 				-- �� IP
	,sort     INT          NOT NULL DEFAULT 0       -- ����(Q&A : 0, �������� : 1)
	,PRIMARY KEY(bbsno)
)ENGINE=MyISAM DEFAULT CHARSET="UTF8";
-- ----------------------------------<CREATE ��>-----------------------------------------