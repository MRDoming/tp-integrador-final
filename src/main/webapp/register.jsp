<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">
    <jsp:include page="head.jsp"/>
<body style="background-color: black;">

    <main>

        <section class="container" id="form-orador">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-xl-7">
                    <div class="container d-flex">
                        <img src="./img/codoacodo-min.png" alt="codo">
                        <h1 style="color: white; margin-top: auto; margin-bottom: 50px;">Registrarse</h1>
                    </div>
                    <form action="register" method="post">
                        <div class="row gx-2">
                            <div class="col-md mb-3">
                                <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" name="nombre" id="nombre" required>
                            </div>
                            <div class="col-md mb-3">
                                <input type="text" class="form-control" placeholder="Apellido" aria-label="Apellido" name="apellido" id="apellido" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <input type="email" class="form-control" placeholder="Email" aria-label="Email" name="email" id="mail" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <input type="password" class="form-control" placeholder="Contraseña" aria-label="Password" name="password" id="pass" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col mb-3">
                                <div class="d-grid">
                                    <input type="submit" class="btn btn-lg btn-form" value="Registrarse">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <div class="text-center">
            <p style="color: white">Ó</p>
        </div>
        <form class="container" action="login.jsp">
            <article class="text-center mt-4">
                <input type="submit" class="btn btn-lg btn-form" value="Iniciar Sesión">
            </article>
        </form>

    </main>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
