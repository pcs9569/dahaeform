-- ----------------------------------<INSERT 시작>---------------------------------------
------------------------------------------------------------회원 sheet
-- 회원가입
INSERT INTO member (m_email, m_name, m_pw)
VALUES ('soldesk@soldesk.com', 'soldesk', '1234qwer');
INSERT INTO member (m_email, m_name, m_pw)
VALUES ('korea@korea.com', 'korean', 'java1113');
INSERT INTO member (m_email, m_name, m_pw, m_level)
VALUES ('dahaeform@dahaeform.co.kr', 'admin', 'all1111', 'A');

-------------------------------------------------------------설문지 sheet
-- 설문지 관리
INSERT INTO qnaire(q_sheetcode, m_email, q_title, q_pw, q_url, q_startdate, q_enddate, q_maxp, q_public, q_dupli, q_ing, q_date)
VALUES ('q0001', 'dahaeform@dahaeform.co.kr', '오늘의식단', '1234', 'https://dahaeform.com/q/0001e92', '2019-04-02 06:30:00', '2019-04-05 03:25:37', 10, 'Y', 'Y', 'Y', NOW());
INSERT INTO qnaire(q_sheetcode, m_email, q_title, q_pw, q_url, q_startdate, q_enddate, q_maxp, q_public, q_dupli, q_ing, q_date)
VALUES ('q0002', 'dahaeform@dahaeform.co.kr', 'test1', 'qwer', 'https://dahaeform.com/q/000297s', '2019-04-02 13:30:00', '2019-04-02 12:00:00', -1, 'Y', 'N', 'Y', NOW());
INSERT INTO qnaire(q_sheetcode, m_email, q_title, q_pw, q_url, q_startdate, q_enddate, q_maxp, q_public, q_dupli, q_ing, q_date)
VALUES ('q0003', 'dahaeform@dahaeform.co.kr', '웹사이트 사용성 설문',	'1234qwer',	'https://dahaeform.com/q/0003b25',"2019-04-04 12:00:00", "2019-04-05 03:25:37",	-1,	'N', 'N', 'Y', NOW());
INSERT INTO qnaire(q_sheetcode, m_email, q_title, q_url, q_startdate, q_enddate, q_maxp, q_public, q_dupli, q_ing, q_date)
VALUES('q0004', 'soldesk@soldesk.com', '빅데이터 1차 시험', 'https://dahaeform.com/q/0004ns8', "2019-04-05 00:00:00", "2019-05-02 03:25:37", 200, 'Y', 'N', 'Y',	"2019-04-03 20:16:48");

-- 설문지별 질문 관리
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'jungbo', 'P1B1', '정보를 입력하세요', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'gaeck', 'P1B2', '오늘 하루 식단 만족도는?', 'Y'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'gaeckm', 'P1B3', '오늘 먹은 음식의 종류를 선택합시다', 'Y'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'drop', 'P1B4', '드롭다운 테스트 입니다', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'soon', 'P2B1', '선호하는 음식점부터 순위를 매겨주세요', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'soon', 'P2B1', '선호하는 음식점부터 순위를 매겨주세요', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'ju', 'P2B2', '자신의 의견을 자유롭게 적어봅시다', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'star', 'P2B3', '얼마나 좋아요?', 'Y'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'chuck', 'P2B4', '웹사이트에 얼마나 만족하십니까?', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'soldesk@soldesk.com', 'q0004', 'gaeck', 'P1B1', '가장 좋아하는 라면을 고르시오', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'soldesk@soldesk.com', 'q0004', 'ju', 'P1B2', '단답형 문제입니다. 정처기 실기 시험 날짜는?', 'N'  );

-------------------------------------------------------------질문유형 sheet
-- 객관식 질문
INSERT INTO dgaeck_qnaire(dgaeck_num, dq_code, dgaeck_jumsu, dgaeck_ect, dgaeck_min, dgaeck_max)
VALUES ((SELECT IFNULL(MAX(dgaeck_num),0)+1 FROM dgaeck_qnaire as TB1), 2, 'N', 'N', 1, 1);
INSERT INTO dgaeck_qnaire(dgaeck_num, dq_code, dgaeck_jumsu, dgaeck_ect, dgaeck_min, dgaeck_max)
VALUES ((SELECT IFNULL(MAX(dgaeck_num),0)+1 FROM dgaeck_qnaire as TB1), 9, 'Y', 'Y', 1, 1);
INSERT INTO dgaeck_qnaire(dgaeck_num, dq_code, dgaeck_jumsu, dgaeck_ect, dgaeck_min, dgaeck_max)
VALUES ((SELECT IFNULL(MAX(dgaeck_num),0)+1 FROM dgaeck_qnaire as TB1), 3, 'N', 'N', 1, 5);
INSERT INTO dgaeck_qnaire(dgaeck_num, dq_code, dgaeck_jumsu, dgaeck_ect, dgaeck_min, dgaeck_max)
VALUES ((SELECT IFNULL(MAX(dgaeck_num),0)+1 FROM dgaeck_qnaire as TB1), 5, 'Y', 'N', 1, -1);
INSERT INTO dgaeck_qnaire(dgaeck_num, dq_code, dgaeck_jumsu, dgaeck_ect, dgaeck_min, dgaeck_max)
VALUES ((SELECT IFNULL(MAX(dgaeck_num),0)+1 FROM dgaeck_qnaire as TB1), 4, 'N', 'N', 1, 1);

-- 객관식 선택지
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 201, '매우 만족', 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 202, '만족', 2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 203, '보통', 3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 204, '불만족'	, 4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 205, '매우 불만족', 5);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 901, '진라면', 5, 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 902, '신라면', 4, 2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 903, '너구리', 3, 3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 904, '짜파게티', 10, 4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 905, '삼양라면', 2, 5);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 900, '기타', 1, 0);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 301, '한식', 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 302, '중식', 	2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 303, '일식', 	3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 304, '양식', 	4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 305, '분식', 	5);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 300, '기타', 	0);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (4, -400, '클릭하면 숫자가!', -1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (4, 401, '111', 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (4, 402, '222', 2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (4, 403, '333', 3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (4, 404, '444', 4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (4, 405, '555', 5);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 501, '이춘복참치', 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 502, '카지켄', 2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 503, '종로 돈부리', 3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 504, '보름', 4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 505, '굿모닝', 5);

-- 순위별 가중치
INSERT INTO gajoong (gajoong_num, dq_code, gajoong_soon, gajoong_weight)
VALUES ((SELECT IFNULL(MAX(gajoong_num),0)+1 FROM gajoong AS TB), 5, 1, 25);
INSERT INTO gajoong (gajoong_num, dq_code, gajoong_soon, gajoong_weight)
VALUES ((SELECT IFNULL(MAX(gajoong_num),0)+1 FROM gajoong AS TB), 5, 2, 20);
INSERT INTO gajoong (gajoong_num, dq_code, gajoong_soon, gajoong_weight)
VALUES ((SELECT IFNULL(MAX(gajoong_num),0)+1 FROM gajoong AS TB), 5, 3, 15);
INSERT INTO gajoong (gajoong_num, dq_code, gajoong_soon, gajoong_weight)
VALUES ((SELECT IFNULL(MAX(gajoong_num),0)+1 FROM gajoong AS TB), 5, 4, 10);
INSERT INTO gajoong (gajoong_num, dq_code, gajoong_soon, gajoong_weight)
VALUES ((SELECT IFNULL(MAX(gajoong_num),0)+1 FROM gajoong AS TB), 5, 5, 5);

-- 별점형 질문
INSERT INTO dstar_qnaire (dstar_num, dq_code, dstar_jumsu, dstar_score)
VALUES ((SELECT IFNULL(MAX(dstar_num),0)+1 FROM dstar_qnaire AS TB), 7, 'N', 10);

-- 척도형 질문
INSERT INTO dchuck_qnaire (dchuck_num, dq_code, dchuck_jumsu, dchuck_msg)
VALUES ((SELECT IFNULL(MAX(dchuck_num),0)+1 FROM dchuck_qnaire AS TB), 8, -5, '매우 불만족,보통,매우 만족');

-- 주관식 질문
INSERT INTO dju_qnaire (dju_num, dq_code, dju_length, dju_msg)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_qnaire AS TB), 6, 200, '적극적인 의견 부탁드립니다.');
INSERT INTO dju_qnaire (dju_num, dq_code, dju_length, dju_msg)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_qnaire AS TB), 10, 30,'예) 2019.03.31');

-------------------------------------------------------------답변 sheet
-- 답변 관리
INSERT INTO answer (a_code, q_sheetcode, a_ip, a_date)
VALUES ('aq00010001', 'q0001', '172.16.10.10', NOW());
INSERT INTO answer (a_code, q_sheetcode, a_ip, a_date)
VALUES ('aq00010002', 'q0001', '172.16.10.3', NOW());
INSERT INTO answer (a_code, q_sheetcode, a_ip, a_date)
VALUES ('aq00010003', 'q0001', '172.16.10.20', NOW());

-- 선택형 답변
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 2, 'aq00010001', 204);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 3, 'aq00010001', 301);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 3, 'aq00010001', 302);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 3, 'aq00010001', 303);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 3, 'aq00010001', 304);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 4, 'aq00010001', 403);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 2, 'aq00010002', 201);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 3, 'aq00010002', 302);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 2, 'aq00010003', 202);
INSERT INTO dsel_answer (dsel_num, dq_code, a_code, dsun_code)
VALUES ((SELECT IFNULL(MAX(dsel_num),0)+1 FROM dsel_answer AS TB), 3, 'aq00010003', 301);

-- 순위형 답변
INSERT INTO drank_answer (drank_num, dq_code, a_code, dsun_code, drank_soon)
VALUES ((SELECT IFNULL(MAX(drank_num),0)+1 FROM drank_answer AS TB), 5, 'aq00010001', 502, 2);
INSERT INTO drank_answer (drank_num, dq_code, a_code, dsun_code, drank_soon)
VALUES ((SELECT IFNULL(MAX(drank_num),0)+1 FROM drank_answer AS TB), 5, 'aq00010001', 503, 3);
INSERT INTO drank_answer (drank_num, dq_code, a_code, dsun_code, drank_soon)
VALUES ((SELECT IFNULL(MAX(drank_num),0)+1 FROM drank_answer AS TB), 5, 'aq00010001', 504, 1);


-- 별점/척도형 답변
INSERT INTO dscale_answer (dscale_num, dq_code, a_code, dscale_score)
VALUES ((SELECT IFNULL(MAX(dscale_num),0)+1 FROM dscale_answer AS TB), 7, 'aq00010001', 5);
INSERT INTO dscale_answer (dscale_num, dq_code, a_code, dscale_score)
VALUES ((SELECT IFNULL(MAX(dscale_num),0)+1 FROM dscale_answer AS TB), 8, 'aq00010001', -3);

-- 주관식/기타 답변
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 6, 'aq00010001', '안녕하세요!' );
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 10, 'aq00020001', '갑시다 여러분. 마치겠습니다! 수고하셨습니다~~' );
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 9, 'aq00020001', '계란을넣었더라면' );
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 7, 'aq00010002', -5);
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 7, 'aq00010003', 0);

-------------------------------------------------------------게시판 sheet
-- 공지사항/Q&A 게시판
INSERT INTO board(bbsno, wname, subject, content, passwd, readcnt, regdt, grpno, indent, ansnum, ip, sort)
VALUES((SELECT IFNULL(MAX(bbsno),0)+1 FROM board AS TB)
	   , 'jak', 'geultitle', 'geulcontent', '1234', 0, NOW(), 1, 0, 0, '172.16.30.28', 0);
INSERT INTO board(bbsno, wname, subject, content, passwd, readcnt, regdt, grpno, indent, ansnum, ip, sort)
VALUES((SELECT IFNULL(MAX(bbsno),0)+1 FROM board AS TB)
	   , 'woon', 'gongtitle', 'gongcontent', '1234', 0, NOW(), 1, 0, 0, '172.16.30.28', 1);
INSERT INTO board(bbsno, wname, subject, content, passwd, readcnt, regdt, grpno, indent, ansnum, ip, sort)
VALUES((SELECT IFNULL(MAX(bbsno),0)+1 FROM board AS TB)
	   , 'jak', 'geultitle1', 'geulcontent1', '1234', 0, NOW(), 1, 0, 0, '172.16.30.28', 0);
-- ----------------------------------<INSERT 끝>-----------------------------------------