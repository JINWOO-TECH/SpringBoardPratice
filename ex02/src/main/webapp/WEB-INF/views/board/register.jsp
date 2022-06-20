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
                            	게시글 등록
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
                           <form action="/board/register" method="post">
                           		<div class="form-group">
	                           		<label>제목</label>
	                           		<input type="text" name="title" class="form-control" placeholder="제목을 적어주세요" required>
                           		</div>
                           		
                           		<div class="form-group">
	                           		<label>내용</label>
	                           		<textarea class="form-control" name="content" placeholder="내용을 적어주세요" rows="10" required></textarea>
                           		</div>
                           		
                           		<div class="form-group">
	                           		<label>작성자</label>
	                           		<input type="text" name="writer" class="form-control" placeholder="작성자를 적어주세요" required>
                           		</div>
                           		
                           		<button type="submit" class="btn btn-success" >글등록</button>
                           		<button type="reset" class="btn btn-warning" >다시쓰기</button>
                           		
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



</body>

</html>
