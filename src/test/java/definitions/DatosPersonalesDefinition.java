package definitions;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.PendingException;
import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.DatosPersonalesPage;
import pageobjects.TituloPage;
import support.Captura;

import static definitions.hooks.driver;

public class DatosPersonalesDefinition {
    DatosPersonalesPage datos;
    BotonPage boton;
    Captura screenshot;
    TituloPage titulo;

    public DatosPersonalesDefinition() {
        datos = new DatosPersonalesPage();
        boton = new BotonPage();
        screenshot = new Captura();
        titulo = new TituloPage();
    }

    @Y("se mostrara la pantalla de {string} con los siguientes campos")
    public void seMostraraLaPantallaDeConLosSiguientesCampos(String texto, DataTable tabla) {
        titulo.validarTituloPantalla(texto);
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
    public void mostraraElFormularioDeLlenadoDeLosDemasDatosDelCliente(String texto) throws InterruptedException{
        titulo.validarTituloFormulario(texto);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Primer nombre incorrecto {string}")
    public void seleccionarElPrimerNombreIncorrecto(String primerNombre) {
        datos.seleccionarPrimerNombre(primerNombre);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Primer apellido incorrecto {string}")
    public void seleccionarElPrimerApellidoIncorrecto(String primerApellido) {
        datos.seleccionarPrimerApellido(primerApellido);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Fecha de emision incorrecta del DNI {string}")
    public void seleccionarLaFechaDeEmisionIncorrectaDelDNI(String fechaEmision) {
        datos.seleccionarFechaEmisionDni(fechaEmision);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Entendido y Siguiente secuencialmente")
    public void darClicEnElBotonEntendidoYSiguienteSecuencialmente() {
        boton.clicBotonEntendido();
        screenshot.capturarPaso(driver, "Screenshot");
        boton.clicBotonSiguiente();
    }

    @Y("dar clic en el boton Ententido")
    public void darClicEnElBotonEntentido() {
        boton.clicBotonEntendido();
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
