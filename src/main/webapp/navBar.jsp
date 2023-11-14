<!DOCTYPE html>
<html lang="pt-br">
<section>

    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
                <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <link rel="stylesheet" href="nav.css" />

                <style>
                    /* Estilos da barra de navegação */
                    .topnav {
                        height: 60px !important;
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                        padding: 0 1rem;
                        background-color: #337F9C !important;
                        color: white;
                        width: 100%;
                        position: fixed;
                        top: 0;
                        left: 0;
                    }

                    .topnav>div {
                        align-items: center;
                        margin: 0 2.5rem;
                        display: flex;
                        justify-content: space-between;
                        height: 100%;
                    }

                    .topnav>div>a {
                        text-decoration: none;
                        color: #fff;
                        margin-right: 20px;
                    }

                    .topnav>div>button {
                        height: 100%;
                        border-radius: 0;
                        transition: all ease-in 0.1s;
                        border: 0;
                        color: #fff;
                        background-color: #337F9C !important;
                    }

                    .topnav>div>button:hover {
                        background-color: #D9E4DD !important;
                        box-shadow: 5px 7px 10px 1px #000000;
                    }

                    a {
                        all: unset;
                        cursor: pointer;
                    }
                </style>
    </head>

    <body>
        <nav class="topnav">
            <div class="logo">
                <a href="/tela.jsp">
                    <img class="logo" style="width: 110px !important; height: auto !important; margin-top: 10px;"
                        src="/images/dog-logo.png" />
                </a>
                <h1>Petmatch</h1>
            </div>
            <div class="options">
                <a href="/found-all-pets" class="a">Encontrados</a>
                <a href="/lost-all-pets" class="a">Procurando</a>
                <a href="/ferramentas-page/index.jsp" class="a">Ferramentas</a>
                <a href="/telasAnuncio/TelaAnuncio1/index.jsp" class="a"> Anuncie </a>
                <c:if test="${sessionScope.loggedUser != null}">
                    <a href="/edit_profile-page/index.jsp" class="a"> ${loggedUser.nome} </a>

                </c:if>
                <c:if test="${sessionScope.loggedUser == null}">

                    <a href="/login-page/login.jsp" class="a">Login</a>
                </c:if>

            </div>
        </nav>
    </body>
    <script src="navscripts.js" defer></script>

</html>