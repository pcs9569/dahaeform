-- ----------------------------------<INSERT ����>---------------------------------------
------------------------------------------------------------ȸ�� sheet
-- ȸ������
INSERT INTO member (m_email, m_name, m_pw)
VALUES ('soldesk@soldesk.com', 'soldesk', '1234qwer');
INSERT INTO member (m_email, m_name, m_pw)
VALUES ('korea@korea.com', 'korean', 'java1113');
INSERT INTO member (m_email, m_name, m_pw, m_level)
VALUES ('dahaeform@dahaeform.co.kr', 'admin', 'all1111', 'A');

-------------------------------------------------------------������ sheet
-- ������ ����
INSERT INTO qnaire(q_sheetcode, m_email, q_title, q_pw, q_url, q_startdate, q_enddate, q_maxp, q_public, q_dupli, q_ing, q_date)
VALUES ('q0001', 'dahaeform@dahaeform.co.kr', '�����ǽĴ�', '1234', 'https://dahaeform.com/q/0001e92', '2019-04-02 06:30:00', '2019-04-05 03:25:37', 10, 'Y', 'Y', 'Y', NOW());
INSERT INTO qnaire(q_sheetcode, m_email, q_title, q_pw, q_url, q_startdate, q_enddate, q_maxp, q_public, q_dupli, q_ing, q_date)
VALUES ('q0002', 'dahaeform@dahaeform.co.kr', 'test1', 'qwer', 'https://dahaeform.com/q/000297s', '2019-04-02 13:30:00', '2019-04-02 12:00:00', -1, 'Y', 'N', 'Y', NOW());
INSERT INTO qnaire(q_sheetcode, m_email, q_title, q_pw, q_url, q_startdate, q_enddate, q_maxp, q_public, q_dupli, q_ing, q_date)
VALUES ('q0003', 'dahaeform@dahaeform.co.kr', '������Ʈ ��뼺 ����',	'1234qwer',	'https://dahaeform.com/q/0003b25',"2019-04-04 12:00:00", "2019-04-05 03:25:37",	-1,	'N', 'N', 'Y', NOW());
INSERT INTO qnaire(q_sheetcode, m_email, q_title, q_url, q_startdate, q_enddate, q_maxp, q_public, q_dupli, q_ing, q_date)
VALUES('q0004', 'soldesk@soldesk.com', '������ 1�� ����', 'https://dahaeform.com/q/0004ns8', "2019-04-05 00:00:00", "2019-05-02 03:25:37", 200, 'Y', 'N', 'Y',	"2019-04-03 20:16:48");

-- �������� ���� ����
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'jungbo', 'P1B1', '������ �Է��ϼ���', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'gaeck', 'P1B2', '���� �Ϸ� �Ĵ� ��������?', 'Y'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'gaeckm', 'P1B3', '���� ���� ������ ������ �����սô�', 'Y'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'drop', 'P1B4', '��Ӵٿ� �׽�Ʈ �Դϴ�', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'soon', 'P2B1', '��ȣ�ϴ� ���������� ������ �Ű��ּ���', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'soon', 'P2B1', '��ȣ�ϴ� ���������� ������ �Ű��ּ���', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'ju', 'P2B2', '�ڽ��� �ǰ��� �����Ӱ� ����ô�', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'star', 'P2B3', '�󸶳� ���ƿ�?', 'Y'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'dahaeform@dahaeform.co.kr', 'q0001', 'chuck', 'P2B4', '������Ʈ�� �󸶳� �����Ͻʴϱ�?', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'soldesk@soldesk.com', 'q0004', 'gaeck', 'P1B1', '���� �����ϴ� ����� ���ÿ�', 'N'  );
INSERT INTO d_qnaire(dq_code, m_email, q_sheetcode, dq_type, dq_order, dq_que, dq_req)
VALUES ((SELECT IFNULL(MAX(dq_code),0)+1 FROM d_qnaire as TB), 'soldesk@soldesk.com', 'q0004', 'ju', 'P1B2', '�ܴ��� �����Դϴ�. ��ó�� �Ǳ� ���� ��¥��?', 'N'  );

-------------------------------------------------------------�������� sheet
-- ������ ����
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

-- ������ ������
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 201, '�ſ� ����', 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 202, '����', 2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 203, '����', 3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 204, '�Ҹ���'	, 4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (2, 205, '�ſ� �Ҹ���', 5);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 901, '�����', 5, 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 902, '�Ŷ��', 4, 2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 903, '�ʱ���', 3, 3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 904, '¥�İ�Ƽ', 10, 4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 905, '�����', 2, 5);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_jumsu, dsun_order)
VALUES (9, 900, '��Ÿ', 1, 0);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 301, '�ѽ�', 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 302, '�߽�', 	2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 303, '�Ͻ�', 	3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 304, '���', 	4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 305, '�н�', 	5);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (3, 300, '��Ÿ', 	0);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (4, -400, 'Ŭ���ϸ� ���ڰ�!', -1);
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
VALUES (5, 501, '���ẹ��ġ', 1);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 502, 'ī����', 2);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 503, '���� ���θ�', 3);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 504, '����', 4);
INSERT INTO dsun_qnaire(dq_code, dsun_code, dsun_choice, dsun_order)
VALUES (5, 505, '�¸��', 5);

-- ������ ����ġ
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

-- ������ ����
INSERT INTO dstar_qnaire (dstar_num, dq_code, dstar_jumsu, dstar_score)
VALUES ((SELECT IFNULL(MAX(dstar_num),0)+1 FROM dstar_qnaire AS TB), 7, 'N', 10);

-- ô���� ����
INSERT INTO dchuck_qnaire (dchuck_num, dq_code, dchuck_jumsu, dchuck_msg)
VALUES ((SELECT IFNULL(MAX(dchuck_num),0)+1 FROM dchuck_qnaire AS TB), 8, -5, '�ſ� �Ҹ���,����,�ſ� ����');

-- �ְ��� ����
INSERT INTO dju_qnaire (dju_num, dq_code, dju_length, dju_msg)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_qnaire AS TB), 6, 200, '�������� �ǰ� ��Ź�帳�ϴ�.');
INSERT INTO dju_qnaire (dju_num, dq_code, dju_length, dju_msg)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_qnaire AS TB), 10, 30,'��) 2019.03.31');

-------------------------------------------------------------�亯 sheet
-- �亯 ����
INSERT INTO answer (a_code, q_sheetcode, a_ip, a_date)
VALUES ('aq00010001', 'q0001', '172.16.10.10', NOW());
INSERT INTO answer (a_code, q_sheetcode, a_ip, a_date)
VALUES ('aq00010002', 'q0001', '172.16.10.3', NOW());
INSERT INTO answer (a_code, q_sheetcode, a_ip, a_date)
VALUES ('aq00010003', 'q0001', '172.16.10.20', NOW());

-- ������ �亯
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

-- ������ �亯
INSERT INTO drank_answer (drank_num, dq_code, a_code, dsun_code, drank_soon)
VALUES ((SELECT IFNULL(MAX(drank_num),0)+1 FROM drank_answer AS TB), 5, 'aq00010001', 502, 2);
INSERT INTO drank_answer (drank_num, dq_code, a_code, dsun_code, drank_soon)
VALUES ((SELECT IFNULL(MAX(drank_num),0)+1 FROM drank_answer AS TB), 5, 'aq00010001', 503, 3);
INSERT INTO drank_answer (drank_num, dq_code, a_code, dsun_code, drank_soon)
VALUES ((SELECT IFNULL(MAX(drank_num),0)+1 FROM drank_answer AS TB), 5, 'aq00010001', 504, 1);


-- ����/ô���� �亯
INSERT INTO dscale_answer (dscale_num, dq_code, a_code, dscale_score)
VALUES ((SELECT IFNULL(MAX(dscale_num),0)+1 FROM dscale_answer AS TB), 7, 'aq00010001', 5);
INSERT INTO dscale_answer (dscale_num, dq_code, a_code, dscale_score)
VALUES ((SELECT IFNULL(MAX(dscale_num),0)+1 FROM dscale_answer AS TB), 8, 'aq00010001', -3);

-- �ְ���/��Ÿ �亯
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 6, 'aq00010001', '�ȳ��ϼ���!' );
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 10, 'aq00020001', '���ô� ������. ��ġ�ڽ��ϴ�! �����ϼ̽��ϴ�~~' );
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 9, 'aq00020001', '������־������' );
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 7, 'aq00010002', -5);
INSERT INTO dju_answer (dju_num, dq_code, a_code, dju_content)
VALUES ((SELECT IFNULL(MAX(dju_num),0)+1 FROM dju_answer AS TB), 7, 'aq00010003', 0);

-------------------------------------------------------------�Խ��� sheet
-- ��������/Q&A �Խ���
INSERT INTO board(bbsno, wname, subject, content, passwd, readcnt, regdt, grpno, indent, ansnum, ip, sort)
VALUES((SELECT IFNULL(MAX(bbsno),0)+1 FROM board AS TB)
	   , 'jak', 'geultitle', 'geulcontent', '1234', 0, NOW(), 1, 0, 0, '172.16.30.28', 0);
INSERT INTO board(bbsno, wname, subject, content, passwd, readcnt, regdt, grpno, indent, ansnum, ip, sort)
VALUES((SELECT IFNULL(MAX(bbsno),0)+1 FROM board AS TB)
	   , 'woon', 'gongtitle', 'gongcontent', '1234', 0, NOW(), 1, 0, 0, '172.16.30.28', 1);
INSERT INTO board(bbsno, wname, subject, content, passwd, readcnt, regdt, grpno, indent, ansnum, ip, sort)
VALUES((SELECT IFNULL(MAX(bbsno),0)+1 FROM board AS TB)
	   , 'jak', 'geultitle1', 'geulcontent1', '1234', 0, NOW(), 1, 0, 0, '172.16.30.28', 0);
-- ----------------------------------<INSERT ��>-----------------------------------------