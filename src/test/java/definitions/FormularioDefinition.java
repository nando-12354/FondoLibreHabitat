package definitions;

import io.cucumber.java.PendingException;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.E;
import io.cucumber.java.es.Y;
import pageobjects.FormularioPage;
import support.Captura;

import static definitions.hooks.driver;

public class FormularioDefinition {
    FormularioPage formulario;
    Captura screenshot;

    public FormularioDefinition() {
        formulario = new FormularioPage();
        screenshot = new Captura();
    }

    @Y("seleccionar el Pais de residencia {string}")
    public void seleccionarElPaisDeResidencia(String paisResidencia) {
        formulario.seleccionarPaisResidencia(paisResidencia);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Nacionalidad {string}")
    public void seleccionarLaNacionalidad(String nacionalidad) {
        formulario.seleccionarNacionalidad(nacionalidad);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Fecha de nacimiento {string}")
    public void seleccionarLaFechaDeNacimiento(String fecha) {
        formulario.seleccionarFechaNacimiento(fecha);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Profesion {string}")
    public void seleccionarLaProfesion(String profesion) {
        formulario.seleccionarProfesion(profesion);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("ingresar el Numero de celular {string}")
    public void ingresarElNumeroDeCelular(String numero) {
        formulario.ingresarCelular(numero);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("ingresar el Correo electronico {string}")
    public void ingresarElCorreoElectronico(String correo) {
        formulario.ingresarCorreo(correo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Tipo de trabajador {string}")
    public void seleccionarElTipoDeTrabajador(String tipoTrabajador) {
        formulario.seleccionarTipoTrabajador(tipoTrabajador);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("ingresar el Numero de RUC {string}")
    public void ingresarElNumeroDeRUC(String ruc) {
        formulario.ingresarRuc(ruc);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Cargo {string}")
    public void seleccionarElCargo(String cargo) {
        formulario.seleccionarCargo(cargo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Ingreso promedio mensual {string}")
    public void seleccionarElIngresoPromedioMensual(String ingreso) {
        formulario.seleccionarIngresoPromedioMensual(ingreso);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("ingresar la Nacionalidad {string}")
    public void ingresarLaNacionalidad(String nacionalidad) {
        formulario.ingresarNacionalidad(nacionalidad);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Cuando("seleccione Usar la direccion de mi DNI")
    public void seleccioneUsarLaDireccionDeMiDNI() {
        formulario.seleccionarUsarDireccionDni();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Prefijo del celular {string}")
    public void seleccionarElPrefijoDelCelular(String prefijo) {
        formulario.seleccionarPrefijoCelular(prefijo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("ingresar el Centro de labores {string}")
    public void ingresarElCentroDeLabores(String centroLabores) {
        formulario.ingresarCentroLabores(centroLabores);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @E("ingresar el Primer nombre {string}")
    public void ingresarElPrimerNombre(String primerNombre) {
        formulario.ingresarPrimerNombre(primerNombre);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @E("ingresar el Segundo nombre {string}")
    public void ingresarElSegundoNombre(String segundoNombre) {
        formulario.ingresarSegundoNombre(segundoNombre);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Sexo {string}")
    public void seleccionarElSexo(String genero) {
        formulario.seleccionarSexo(genero);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Estado civil {string}")
    public void seleccionarElEstadoCivil(String estadoCivil) {
        formulario.seleccionarEstadoCivil(estadoCivil);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Departamento {string}")
    public void seleccionarElDepartamento(String departamento) {
        formulario.seleccionarDepartamento(departamento);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Provincia {string}")
    public void seleccionarLaProvincia(String provincia) {
        formulario.seleccionarProvincia(provincia);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Distrito {string}")
    public void seleccionarElDistrito(String distrito) {
        formulario.seleccionarDistrito(distrito);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Tipo de via {string}")
    public void seleccionarElTipoDeVia(String tipoVia) {
        formulario.seleccionarTipoVia(tipoVia);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("ingresar la Direccion {string}")
    public void ingresarLaDireccion(String direccion) {
        formulario.ingresarDireccion(direccion);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Cuando("seleccione Ingresar una nueva direccion")
    public void seleccioneIngresarUnaNuevaDireccion() {
        formulario.seleccionarNuevaDireccion();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("ingresar la Nueva direccion {string}")
    public void ingresarLaNuevaDireccion(String direccion) {
        formulario.ingresarDireccionManual(direccion);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("ingresar el Ingreso promedio mensual {string}")
    public void ingresarElIngresoPromedioMensual(String promedio) {
        formulario.ingresarIngresoPromedioMensual(promedio);
        screenshot.capturarPaso(driver, "Screenshot");
    }
}