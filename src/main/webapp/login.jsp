<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">
<jsp:include page="head.jsp"/>
<body style="background-color: black; color: yellow">
<section class="container" id="form-orador">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-xl-7">
            <div class="container d-flex">
                <img src="./img/codoacodo-min.png" alt="codo">
                <h1 style="color: white; margin-top: auto; margin-bottom: 50px;">Iniciar Sesión</h1>
            </div>
            <form action="login" method="post">

                <div class="row">
                    <div class="col mb-3">
                        <input type="email" class="form-control" placeholder="Email" aria-label="Email" name="email" required>
                    </div>
                    <div class="col mb-3">
                        <input type="password" class="form-control" placeholder="Contraseña" name="password" aria-label="Password" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <div class="d-grid">
                            <button type="submit" class="btn btn-lg btn-form">Iniciar Sesión</button>
                        </div>
                    </div>
                </div>
            </form>
            <div class="text-center">
                <p style="color: white">Ó</p>
            </div>
            <form class="container" action="register.jsp">
                <article class="text-center mt-4">
                    <input type="submit" class="btn btn-lg btn-form" value="Registrarse">
                </article>
            </form>

        </div>
    </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
