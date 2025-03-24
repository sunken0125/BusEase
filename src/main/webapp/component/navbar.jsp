<%@page import="com.entity.Route"%>
<%@page import="com.entity.Bookings"%>
<%@page import="com.dao.BookingsDao"%>
<%@page import="com.dao.RouteDao"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>



<nav class="navbar navbar-expand-lg ">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><img
			src="https://mir-s3-cdn-cf.behance.net/projects/404/7e3492164365195.Y3JvcCwyMDUwLDE2MDQsMzU1LDA.png" alt="logo" width="375px" height="73px"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">


				<c:if test="${empty userObj }">
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="book_ticket.jsp"><i class="fa-solid fa-bus"></i>
							BUS TICKETS</a></li>

					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="admin_login.jsp">ADMIN</a></li>

					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="user_login.jsp">USER</a></li>
				</c:if>




				<c:if test="${not empty userObj }">
					<li class="nav-item"><a
						class="nav-link active text-white fw-normal" aria-current="page"
						href="book_ticket.jsp">BOOK TICKETS</a></li>



					<li class="nav-item"><a
						class="nav-link active text-white fw-normal" aria-current="page"
						href="my_bookings.jsp">MY BOOKINGS</a></li>


					<div class="dropdown">
						<button class="btn btn-light dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-user-astronaut"></i> ${userObj.fullName }
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="userLogout">Logout</a></li>
						</ul>
					</div>
				</c:if>



			</ul>
		</div>
	</div>
</nav>