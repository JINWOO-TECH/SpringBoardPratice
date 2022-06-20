<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../includes/header.jsp" %>
	
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">랭크</h1>
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
                                        <th>등수</th>
                                        <th>작성자</th>
                                        <th>글수</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="ranklist" items="${ranklist}" begin="0"  step="1" varStatus="status">
                                    <tr class="odd gradeX">
                                    	<td>${status.index+1}등</td>
                                        <td class="id"><c:out value="${ranklist.writer}"/></td>
                                        <td class="count"><c:out value="${ranklist.count}"/></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                           			 <!-- /.col-lg-6 -->

                            <!-- page bar -->
                       		<button type="button" class="btn btn-warning" onclick="location.href='/board/list?pageNum=${param.pageNum}&amount=${param.amount}'">목록보기</button>
                        </div>
                     </div>
                     			<!-- col-lg-6 -->
			                      <div class="col-lg-6">
				                    <div class="panel panel-default">
				                        <div class="panel-heading">
				                            ranking Chart
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                            <div id="morris-donut-chart"></div>
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
			                    <!-- /.panel -->
			               	 </div>
		                	<!-- /.col-lg-6 -->
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
    
        <!-- Morris Charts JavaScript -->
    <script src="/resources/vendor/raphael/raphael.min.js"></script>
    <script src="/resources/vendor/morrisjs/morris.min.js"></script>
    
<script>
$(function() {

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: $($(".id")[0]).text(),
            value: $($(".count")[0]).text()
        }, {
            label: $($(".id")[1]).text(),
            value: $($(".count")[1]).text()
        }, {
            label: $($(".id")[2]).text(),
            value: $($(".count")[2]).text()
        }],
        resize: true
    });
 
});
</script>
</body>

</html>
