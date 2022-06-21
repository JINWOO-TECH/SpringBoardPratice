<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../includes/header.jsp" %>
	
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">중복된글의개수페이지</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">

                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>중복된 글의 개수</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td>${duplicatedCount}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                           			 <!-- /.col-lg-6 -->

                            <!-- page bar -->
                       		<button type="button" class="btn btn-warning" onclick="location.href='/board/list?pageNum=${param.pageNum}&amount=${param.amount}'">목록보기</button>
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
