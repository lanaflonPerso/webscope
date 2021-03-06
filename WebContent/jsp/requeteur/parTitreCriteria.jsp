<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Par Titre Criteria" nav="requeteur" subnav="titreCriteria">
	<jsp:attribute name="body_area" >

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/requeteur/index.jsp">Accueil</a></li>
            <li class="active">Par Titre Criteria</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Lecture ] <span class="label label-default">Par Titre Crit�ria </span></h3>
              
              <p>Liste des films ayant pour titre <b>Vertigo</b> :</p>
			  	
			  	<table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Titre</th>
              			<th>Ann�e</th>
              			<th>Genre</th>
              			<th>R�alisateur</th>
              			<th>Pays</th>
              		</tr>
              	</thead>
					<c:forEach items="${films}" var="film">
						<tr>
							<td><c:out value="${film.titre}" /></td>
							<td><c:out value="${film.annee}" /></td>
							<td><c:out value="${film.genre.code}" /></td>
							<td><c:out value="${film.realisateur.prenom} ${film.realisateur.nom}" /></td>
							<td><c:out value="${film.pays.nom}" /></td>
						</tr>
					</c:forEach>
				</table>


            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>
