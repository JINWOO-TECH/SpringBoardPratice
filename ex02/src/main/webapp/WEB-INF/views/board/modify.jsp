<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%@ include file="../includes/header.jsp" %>
	
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">게시판</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	게시글 수정
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
						<form action="/board/modify" method="post">
								
								<input type="hidden" name="bno" value="${board.bno}">
								<input type="hidden" name="pageNum" value="${criteria.pageNum}">
								<input type="hidden" name="amount" value="${criteria.amount}">
								
                           		<div class="form-group">
	                           		<label>제목</label>
	                           		<input type="text" name="title" class="form-control" value="${board.title}"  >
                           		</div>
                           		
                           		<div class="form-group">
	                           		<label>내용</label>
	                           		<textarea class="form-control" name="content" rows="20" >${board.content }</textarea>
                           		</div>
                           		
                           		<div class="form-group">
	                           		<label>작성자</label>
	                           		<input type="text" name="writer" class="form-control" value="${board.writer }" >
                           		</div>
								
								
                                <button type="submit" class="btn btn-primary">수정</button>
                                <button type="submit" id="deleteButton"class="btn btn-danger" >삭제</button>
                                <button type="button" class="btn btn-warning" onclick="location.href='/board/list?pageNum=${criteria.pageNum}&amount=${criteria.amount }'">목록보기</button>
							</form>
                            <!-- /.table-responsive -->
                        </div>
                     </div>
                   </div>
                </div>
 			</div>
 			
 			
    <!-- jQuery -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

	<script>
		//삭제버튼이 클릭되었을때 동작
		var formObj = $("form");
		$("#deleteButton").on("click",function(e){
			e.preventDefault(); // 기본적으로 걸려있는 이벤트 무산
			
			formObj.attr("action","/board/remove");
			formObj.submit();
		});
	</script>

</body>

</html>
