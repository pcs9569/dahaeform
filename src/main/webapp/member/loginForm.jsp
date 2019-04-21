<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="../header.jsp"%>
<!-- 본문 시작 loginForm.jsp -->
<div style="height:auto">
<h3>회원가입</h3>
<form name="regForm" method="post" action="memberproc.do">
<!-- 멤버 중복확인 나중에 onsubmit="return memberCheck(this)" -->
	<br>
	<table style="margin: auto;">
		<tr>
			<th>이메일</th>
			<td>
				<input type="text" name="m_email" size="30" required>
				<!-- 이메일 중복체크 나중에 -->
				<!-- <input type="button" value="Email 중복확인" onclick="emailCheck()"> -->
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="m_name" size="15" required>
			</td>
		</tr>

		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" name="m_pw" size="15" required>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<input type="submit" value="회원가입" />
				<input type="reset" value="취소" />
			</td>
		</tr>
	</table>
</form>
</div>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%>
