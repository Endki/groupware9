<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title><s:message code="common.pageTitle"/></title>
    <link href="css/sb-admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/sb-admin/metisMenu.min.css" rel="stylesheet">
    <link href="css/sb-admin/sb-admin-2.css" rel="stylesheet">
    <link href="css/sb-admin/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="js/dynatree/ui.dynatree.css" rel="stylesheet" id="skinSheet"/>


    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="css/sb-admin/bootstrap.min.js"></script>
    <script src="css/sb-admin/metisMenu.min.js"></script>
    <script src="css/sb-admin/sb-admin-2.js"></script>
	<script src="js/project9.js"></script>    
<%-- 	<script type="text/javascript" src="./js/workCheckBook.js"></script> --%>
	
<script>
function fn_formSubmit(){
	document.form1.submit();	
}


function fn_onCheck(){
	var now=new Date();
	alert("on"+now);
	
	/* $.ajax({
		url: "boardListByAjax",
		type:"post", 
		dataType: "json",
		success: function(result){
			$("#tree").dynatree({children: result});
		    $("#tree").dynatree("getTree").reload();
		    $("#tree").dynatree("getRoot").visit(function(node){
		        node.expand(true);
		    });
		}
	})	 */
}

function fn_offCheck(){
	var now=new Date();
	alert("off"+now);
}

</script>
    
</head>

<body>

    <div id="wrapper">

		<jsp:include page="../common/navigation.jsp" />
		 <div id="page-wrapper">
		    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><i class=""></i>?????????</h1>
                </div>
            </div>
            <table border="1" width="100%" align="center">
	            <tr>
	            	<th>??????</th>
		            <th>????????????</th>
		            <th>????????????</th>
	            </tr>
	            <c:forEach var="i" begin="1" end="30">
					<tr>
						<td><c:out value="${i}" /></td>
						<td><button id="onCheck" onclick="fn_onCheck()">????????????</button></td>
						<td><button id="offCheck" onclick="fn_offCheck()">????????????</button></td>
						
					</tr>
            	</c:forEach>
            	
            </table>
		 </div>

    </div>
</body>

</html>
