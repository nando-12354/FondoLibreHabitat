package definitions;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.PendingException;
import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.DatosPersonalesPage;
import support.Captura;

import static definitions.hooks.driver;

public class DatosPersonalesDefinition {
    BotonPage boton;
    Captura screenshot;
    DatosPersonalesPage datos;

    public DatosPersonalesDefinition() {
        boton = new BotonPage();
        screenshot = new Captura();
        datos = new DatosPersonalesPage();
    }

    @Y("se mostrara la pantalla de {string} con los siguientes campos")
    public void seMostraraLaPantallaDeConLosSiguientesCampos(String titulo, DataTable tabla) {
        datos.validarTituloPantalla(titulo);
        datos.validarCamposPantalla(tabla);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el primer nombre correcto del cliente {string}")
    public void seleccionarElPrimerNombreCorrectoDelCliente(String primerNombre) {
        datos.seleccionarPrimerNombre(primerNombre);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el primer apellido correcto del cliente {string}")
    public void seleccionarElPrimerApellidoCorrectoDelCliente(String primerApellido) {
        datos.seleccionarPrimerApellido(primerApellido);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Fecha de emision correcta del DNI del cliente {string}")
    public void seleccionarLaFechaDeEmisionCorrectaDelDNIDelCliente(String fechaEmision) {
        datos.seleccionarFechaEmisionDni(fechaEmision);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Siguiente")
    public void darClicEnElBotonSiguiente() {
        boton.clicBotonSiguiente();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("mostrara el formulario {string} de llenado de los demas datos del cliente")
    public void mostraraElFormularioDeLlenadoDeLosDemasDatosDelCliente(String titulo) throws InterruptedException{
        datos.validarTituloFormulario(titulo);
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
