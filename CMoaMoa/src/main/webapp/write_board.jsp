<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
		<div class="row">
			<form method="post" action="write_boardPro.jsp">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<div>
			<label>전 공</label>
			<select id="selectbox" name="board_no">
				<option value="0">자유게시판</option>
				<option value="01">공모전게시판</option>
				<option value="02">교내/외 게시판</option>
				<option value="1">경영학부</option>
				<option value="2">글로벌경제통상학부</option>
				<option value="3">관광호텔경영학부</option>
				<option value="4">미디어콘텐츠학부</option>
				<option value="5">사회과학부</option>
				<option value="6">인문학부</option>
				<option value="7">에너지광기술융합학부</option>
				<option value="8">BT융합학부</option>
				<option value="9">소프트웨어융합학부</option>
				<option value="10">휴먼환경디자인학부</option>
				<option value="11">융합전자공학부</option>
				<option value="12">국어교육과</option>
				<option value="13">수학교육과</option>
				<option value="14">교직과</option>
				<option value="15">디자인조형학부</option>
				<option value="16">연극영화학부</option>
				<option value="17">간호학과</option>
				<option value="18">치위생학과</option>
				<option value="19">방사선학과</option>
				<option value="20">물리치료학과</option>
				<option value="21">작업치료학과</option>
				<option value="22">임상병리학과</option>
				<option value="23">보건행정헬스케어학부</option>
				<option value="24">교양학부</option>
				<option value="25">의사소통교육부</option>
				<option value="26">기초교육클리닉부</option>
				<option value="27">항공학부</option>
				<option value="28">군사학과</option>
			</select>
		</div>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="title" maxlength="50"></td>
						</tr>
						<tr>
							<td><input type="text" class="form-control" placeholder="name" name="name" maxlength="50"></td>
						</tr>	
						<tr>
							<td><input type="text" class="form-control" placeholder="major" name="major" maxlength="50"></td>
						</tr>				
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="content" maxlength="1000" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<!-- 글쓰기 버튼 생성 -->
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>

</body>
</html>