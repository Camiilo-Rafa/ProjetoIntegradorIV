<%-- 
    Document   : Principal
    Created on : 10/04/2022, 17:08:37
    Author     : Camil
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Usuário</title>
    </head>
    <body class="container">
        <c:import url="../uteis/header.jsp"/>
        <br><br><br>
        <input type="text" id="nomeUsuario" class="form-control"/><br/>
        <button onclick="buscar()" class="btn btn-primary">Buscar</button>
        <div id="msgAlerta" class="alert alert-warning" role="alert" style="display:none">
            <span id="txtAlerta"></span>
        </div>
    </header>
    <div class="container destaque">
        <section class="busca">
            <h2>Busca</h2>
            <form>
                <input type="search">
                <button>Buscar</button>
            </form>
        </section>
        <section class="menu-departamentos">
            <h2>Departamentos</h2>
            <nav>
                <ul>
                    <li><a href="#">Blusas e camisas</a>
                        <ul>
                            <li><a href="#">Manga curta</a></li>
                            <li><a href="#">Manga comprida</a></li>
                            <li><a href="#">Camisa social</a></li>
                            <li><a href="#">Camisa casual</a></li>
                        </ul>
                    </li>         
                    <li><a href="#">Calças</a></li> 
                    <li><a href="#">Saias</a></li> 
                    <li><a href="#">Vestidos</a></li> 
                    <li><a href="#">Sapatos</a></li> 
                    <li><a href="#">Bolsas e carteiras</a></li> 
                    <li><a href="#">Acessórios</a></li> 
                </ul>
            </nav>
        </section>
        <section class="banner-destaque">
            <figure>
                <img src="img/destaque-home.png" 
                     alt="promoção: Big City Nigth">
            </figure>
        </section>
    </div>
    <div class="container paineis" >
        <section class="painel novidades">
            <h2>Novidades</h2>
            <ol>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura1.png" alt="miniatura1">
                            <figcaption>Fuzz Cardigan por R$ 129,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura2.png" alt="miniatura2">
                            <figcaption>Camiseta azul por R$ 79,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura3.png" alt="miniatura3">
                            <figcaption>Blusa verde por R$ 69,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura4.png" alt="miniatura4">
                            <figcaption>Jaqueta vinho por R$ 129,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura5.png" alt="miniatura5">
                            <figcaption>Regata azul por R$ 39,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura6.png" alt="miniatura6">
                            <figcaption>Regata rosa por R$ 39,90</figcaption>
                        </figure>
                    </a>    
                </li>
            </ol>
        </section>
        <section class="painel mais-vendidos">
            <h2>Mais vendidos</h2>
            <ol>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura7.png" alt="miniatura7">
                            <figcaption>Camiseta verde por R$ 39,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura8.png" alt="miniatura8">
                            <figcaption>Cam. turqueza por R$ 39,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura9.png" alt="miniatura9">
                            <figcaption>Camisa xadrez por R$ 39,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura10.png" alt="miniatura10">
                            <figcaption>Camisa rosa por R$ 39,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura11.png" alt="miniatura11">
                            <figcaption>Shorts verde por R$ 39,90</figcaption>
                        </figure>
                    </a>    
                </li>
                <li>
                    <a href="produto.html">
                        <figure>
                            <img src="img/produtos/miniatura12.png" alt="miniatura12">
                            <figcaption>Camisa azul por R$ 69,90</figcaption>
                        </figure>
                    </a>    
                </li>
            </ol>
        </section>
    </div>
    <footer>
        <div class="container">
            <img src="img/logo-rodape.png" alt="Logo da Mirror Fashion">
            <ul class="social">
                <li><a href="http://facebook.com/mirrorfashion">Facebook</a></li>
                <li><a href="http://twitter.com/mirrorfashion">Twitter</a></li>
                <li><a href="http://plus.google.com/mirrorfashion">Google+</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>