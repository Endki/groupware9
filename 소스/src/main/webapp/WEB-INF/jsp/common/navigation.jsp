<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!-- fonctawesome v5 cdn -->
<head>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/v4-shims.css">
</head>
<!-- fonctawesome v5 cdn -->


        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand" href="index"><s:message code="common.projectTitle"/></a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

	            <ul class="nav navbar-top-links navbar-right">
	                <!-- /.dropdown -->
                    <c:if test="${alertcount>0}">
		                <li class="dropdown">
		                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="showAlertList()">
		                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
		                        	<div class="msgAlert"><c:out value="${alertcount}"/></div>
		                    </a>
		                    <script>
		                    	function showAlertList(){
		                    		$.ajax({
		                    			url: "alertList4Ajax", 
		                    			dataType: "html",
		                    			type:"post", 
		                    			success: function(result){
		                    				if (result!=="") {
		                    					$("#alertlist").html(result);
		                    				}
		                    			}
		                    		})		                    		
		                    	}
		                    </script>
		                    <ul id="alertlist" class="dropdown-menu dropdown-alerts">
		                    </ul>
		                    <!-- /.dropdown-alerts -->
		                </li>
                    </c:if>
	                <!-- /.dropdown -->
	                <li class="dropdown">
	                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
	                    </a>
	                    <ul class="dropdown-menu dropdown-user">
	                        <li><a href="memberForm"><i class="fa fa-user fa-fw"></i> <c:out value="${sessionScope.usernm}"/></a></li>
	                        <li><a href="searchMember"><i class="fa fa-users fa-fw"></i> <s:message code="memu.users"/></a></li>
	                        <li class="divider"></li>
	                        <li><a href="memberLogout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
	                        </li>
	                    </ul>
	                    <!-- /.dropdown-user -->
	                </li>
	                <!-- /.dropdown -->
	            </ul>
	            <!-- /.navbar-top-links -->
            </div>
            <!-- /.navbar-header -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                           	<form id="searchForm" name="searchForm"  method="post" action="boardList">
                                <input type="hidden" name="searchType" value="brdtitle,brdmemo">
								<div class="input-group custom-search-form">
	                                <input class="form-control" type="text" name="globalKeyword" id="globalKeyword" placeholder="Search...">
	                                <span class="input-group-btn">
	                                    <button class="btn btn-default" type="button" onclick="fn_search()">
	                                        <i class="fa fa-search"></i>
	                                    </button>
	                                </span>
	                            </div>                           	
                            </form>
	                                <script>
	                                	function fn_search(){
	                                		if ($("#globalKeyword").val()!=="") {
		                                		$("#searchForm").submit();
	                                		}
	                                	}
	                                </script>                            <!-- /input-group -->
                        </li>
                        
                        
                        <!-- 개인기능  -->
                        <li>
                            <a href="#"><i class="fa fa-male fa-fw"></i> 개인기능<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								
								<li>
                            		<a href="#">개인 업무</a>
                        		</li>    
								<li>
                            		<a href="#">개인 자료</a>
                        		</li>    
								<li>
                            		<a href="#">개인 블로그</a>
                        		</li>    
								<li>
                            		<a href="#">개인 아이디어</a>
                        		</li>    
                        		
                        		<li>
                            		<a href="#">명함 관리</a>
                        		</li>
                        		<li>
                            		<a href="#">작업 일지</a>
                        		</li>     
	                        </ul>                             
                        </li>
                        
                        <!-- 업무기능  -->
                        <li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> 업무기능<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
							    <li>
							    	<a href="#">프로젝트 관리</a>
							    </li>
							    <li>
							    	<a href="#">출근부</a>
							    </li>
							    <li>
							    	<a href="#">전화 메모</a>
							    </li>
							    <li>
							    	<a href="#">쪽지</a>
							    </li>
							    <li>
							    	<a href="#">노트</a>
							    </li>
							    <li>
							    	<a href="#">작업 관리</a>
							    </li>
								<li>
                            		<a href="schList"><i class="fa fa-calendar fa-fw"></i> 일정관리</a>
                        		</li> 
                        		
                        		<li>
		                            <a href="#"><i class="fa fa-envelope-o fa-fw"></i> 메일<span class="fa arrow"></span></a>
									<ul class="nav nav-second-level">
		                                <li>
		                                    <a href="mailForm">새메일</a> 
		                                </li>
		                                <li>
				                            <a href="receiveMails">받은 메일</a>
		                                </li>
		                                <li>
				                            <a href="sendMails">보낸 메일</a>
		                                </li>
			                        </ul>                             
		                        </li>     
		                        <li>
		                            <a href="#"><i class="fa fa-edit fa-fw"></i> 전자결재<span class="fa arrow"></span></a>
									<ul class="nav nav-second-level">
		                                <li>
		                                    <a href="signDocTypeList">기안하기</a>
		                                </li>
		                                <li>
				                            <a href="signListTobe">결재 받을(은) 문서 </a>
		                                </li>
		                                <li>
				                            <a href="signListTo">결재 할(한) 문서</a>
		                                </li>
			                        </ul>                             
		                        </li>                        
	                        </ul>                             
                        </li>   
                        
                        <!-- 공유기능  -->
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> 공유기능<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
		                        <li>
		                            <a href="boardList"><i class="fa fa-files-o fa-fw"></i> <s:message code="board.boardName"/></a>
		                        </li>
		                        <li>
							    	<a href="#">커뮤니티</a>
							    </li>
	                        </ul>                             
                        </li>   
                        <!-- 사전기능  -->
                        <li>
                            <a href="#"><i class="fa fa-book fa-fw"></i> 사전기능<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
							    	<a href="#">지식 사전</a>
							    </li>
							    <li>
							    	<a href="#">용어 사전</a>
							    </li>

	                        </ul>                             
                        </li>   
                        <!-- 상담기능  -->
                        <li>
                            <a href="#"><i class="fa fa-user-friends fa-fw"></i> 상담기능<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
							    	<a href="#">상담 관리</a>
							    </li>
							    <li>
							    	<a href="#">투표</a>
							    </li>
							    <li>
							    	<a href="#">만족도 조사</a>
							    </li>
							    <li>
							    	<a href="#">질문과 답변</a>
							    </li>
							    <li>
							    	<a href="#">설문 조사</a>
							    </li>
	                        </ul>                             
                        </li>   
                        <!-- 개선기능  -->
                        <li>
                            <a href="#"><i class="fa fa-thumbs-up fa-fw"></i> 개선기능<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
							    	<a href="#">아이디어 공유</a>
							    </li>
							    <li>
							    	<a href="#">동아리 활동</a>
							    </li>
	                        </ul>                             
                        </li>   
                        <!-- 편의기능 -->
                        
						<li>
                            <a href="#"><i class="fa fa-cube fa-fw"></i> 편의기능<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
                                <li>
                                    <a href="https://github.com/endki">홈페이지 이동</a>
                                </li>
	                        </ul>                             
                        </li> 
                        
                        <!-- 기존  -->
     
                       
                        <c:if test='${sessionScope.userrole == "A"}'>
	                        <li>
	                            <a href="#"><i class="fa fa-tools fa-fw"></i> 관리자 기능<span class="fa arrow"></span></a>
	                            <ul class="nav nav-second-level">
			                        <li>
			                            <a href="adBoardGroupList"><i class="fa fa-files-o fa-fw"></i> <s:message code="memu.board"/></a>
			                        </li>
	                            	<li>
			                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> <s:message code="memu.organ"/><span class="fa arrow"></span></a>
			                            <ul class="nav nav-second-level">
			                                <li>
			                                    <a href="adDepartment"><s:message code="memu.dept"/></a>
			                                </li>
			                                <li>
			                                    <a href="adUser"><s:message code="memu.user"/></a>
			                                </li>
			                            </ul>
			                        </li>
	                            	<li>
                                 		<a href="adSignDocTypeList"><i class="fa fa-edit fa-fw"></i> 결재문서양식관리</a>
                             		</li>
	                            </ul>
	                        </li>
	                	</c:if>	    
	                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

