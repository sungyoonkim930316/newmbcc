<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>MBCC</title>

        <meta charset="utf-8" />
    	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	    <meta name="description" content="" />
	    <meta name="author" content="" />
	    
	    <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

	   <!--  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" /> -->

        <script src="https://code.jquery.com/jquery-3.6.4.js"></script>
	    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"></script>
	    
        <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.4/index.global.min.js'></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
	  

        <script>
        function asyncMovePage(url) {
	    		var ajaxOption={
	    				url : url,
	    				async : true,
	    				type : "POST",
	    				dataType : "html",
	    				cache : false
	    		};
	    		
	    		$.ajax(ajaxOption).done(function(data){
	    			$('#bodyContents').children().remove();
	    			$('#bodyContents').html(data);
	    		}); 
	    	}
	    </script>
        
    </head>
    <body class="sb-nav-fixed">
    
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand ps-3" href="#" onclick="asyncMovePage('main.do')">MBCC</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle"><i class="fas fa-bars"></i></button>
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><c:if test="${id ne null}">
					${id}님 </c:if><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a id="Mypage" class="dropdown-item" href="#!">My page</a></li>
                        <li><a id="updateMeber" class="dropdown-item" href="#!">나의 정보수정</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a id="logout" class="dropdown-item"  onclick="location.href='${ctx}/logout.do'">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>