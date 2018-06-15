<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cadastro de tutorial</title>
	<link href="<c:url value="/resources/css/bootstrap-custom.css" />" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-inverse">
      	<div class="container">
        	<div class="navbar-header">
          		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            	<span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
          		</button>
          		<a class="navbar-brand" href="#">
					Hellodev
          		</a>
        	</div>
        	<div id="navbar" class="navbar-collapse collapse">
          		<ul class="nav navbar-nav">
            		<li class="active"><a href="#">Home</a></li>
            		<li><a href="#about">Backend</a></li>
            		<li><a href="#contact">Frontend</a></li>
            		<li><a href="#contact">Mobile</a></li>
            		<li><a href="#contact">Infraestrutura</a></li>
          		</ul>
        	</div>
        </div>
    </nav>
    
	<div class="container">
		<form action="tutorial" method="post">
			<h1>Cadastro de Tutoriais</h1>
			
			<div class="form-group success">
				${sucesso}
			</div>			
		  	<div class="form-group">
		    	<label for="titulo">Título</label>
		    	<input type="text" class="form-control" id="titulo" name="titulo" placeholder="Título"/>
		    </div>
		    <div class="form-group">
		    	<label for="resumo">Resumo: </label>
				<input type="text" class="form-control" id="resumo" name="resumo" placeholder="Resumo"/>
		  	</div>
		  	<div class="form-group">
		    	<label for="categoria">Categoria:</label>
		    	<select class="form-control" id="categoria" name="categoria">
		    		<option value="">Selecione uma categoria</option>
		    		<c:forEach var="categoria" items="${categorias}" varStatus="status">
	    				<option value="${categoria}">${categoria.descricao}</option>
		    		</c:forEach>
		    	</select>
		  	</div>
		  	<div class="form-group">
		    	<label for="texto">Texto:</label>
		    	<textarea rows="15" class="form-control" id="texto" name="texto"></textarea>
		  	</div>
		  	<div class="form-group">
		    	<label for="data">Data publicação:</label>
				<input type="date" class="form-control" id="data" name="dataPublicacao" value="${data}"/>
		  	</div>
		  	<div class="row">
		  		<div class="col-md-2 col-md-offset-10 right">
		  			<button type="submit" class="btn">Gravar</button>
		  		</div>
		  	</div>
		</form>
	</div>
	
</body>
</html>