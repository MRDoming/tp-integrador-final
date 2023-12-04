<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="header.jsp"/>
<main>

    <section class="container pt-section">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">

                <div class="row row-cols-1 row-cols-md-3 text-center">
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-primary">
                            <div class="card-header py-3 text-white bg-primary border-primary">
                                <h4 class="my-0 fw-normal">Estudiante</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">80%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-info">
                            <div class="card-header py-3 text-white bg-info border-info">
                                <h4 class="my-0 fw-normal">Trainee</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">50%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-warning">
                            <div class="card-header py-3 text-white bg-warning border-warning">
                                <h4 class="my-0 fw-normal">Junior</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">15%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                </div>

                <h2 class="titulo-gral">Venta <span>Valor de ticket $200</span></h2>
                
                <form action="">
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" id="nombre" required>
                        </div>
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Apellido" aria-label="Apellido" id="apellido" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <input type="email" class="form-control" placeholder="Email" aria-label="Email" id="mail" required>
                        </div>
                    </div>
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <label for="cantidadTickets" class="form-label">Cantidad</label>
                            <input type="number" class="form-control" placeholder="Cantidad" aria-label="Cantidad" id="cantidadTickets" min="1" required>
                        </div>
                        <div class="col-md mb-3">
                            <label for="categoriaSelect" class="form-label">Categoría</label>
                            <select class="form-select" aria-label="Categoría" id="categoriaSelect">
                                <option value="" selected>-- Seleccione --</option>
                                <option value="0">Sin Categoria</option>
                                <option value="1">Estudiante</option>
                                <option value="2">Trainee</option>
                                <option value="3">Junior</option>
                            </select>
                        </div>
                    </div>
                    <div class="alert alert-primary mt-2 mb-4" role="alert">
                        Total a pagar: $ <span id="totalPago" class="align-middle"></span>
                    </div>
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <button type="reset" class="w-100 btn btn-lg btn-form" id="btnBorrar">Borrar</button>
                        </div>
                        <div class="col-md mb-3">
                            <button type="button" class="w-100 btn btn-lg btn-form" id="btnResumen">Resumen</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>

</main>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="js/comprar-tickets.js"></script>
</body>
</html>