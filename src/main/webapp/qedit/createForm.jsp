<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header.jsp"%>
<!-- 본문 시작 createForm.jsp -->
<script src="./js/jquery.js"></script> <!-- jquery사용 위한 코드 삽입 -->
	 <h3>설문지 만들기</h3>
<!-- <form name="editForm" method="post" action="create.do">

</form> -->
	<button id="btn">테스트</button>
	<input type="button" value="질문추가" onclick="add_div()"><br/>
	<div id="room_type">
	<div class="form-group">
		<label for="image">제목</label>
		<input type="text" id="title" name="title" class="form-control" ></input>
		
	</div>
	<input type="button" value="삭제" onclick="remove_div(this)">
	</div>
	<div id="field"></div>

<!-- 본문 끝 -->

<script type="text/javascript">
	
	function add_div(){
	    var div = document.createElement('div');
	    div.innerHTML = document.getElementById('room_type').innerHTML;
	    document.getElementById('field').appendChild(div);
	}

	function remove_div(obj){
		document.getElementById('field').removeChild(obj.parentNode);
	} 
	
	/*
	function add_div(){
	    var div = $("<div>");
	    div.innerHTML = $("room_type").innerHTML;
	    $("field").append($div);
	}

	function remove_div(obj){
		document.getElementById('field').removeChild(obj.parentNode);
	} 
	*/

	$("#btn").click(function(){
		alert("버튼 누름");
	});
</script>

<%@ include file="../footer.jsp"%>
