package definitions;

import io.cucumber.java.PendingException;
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
}