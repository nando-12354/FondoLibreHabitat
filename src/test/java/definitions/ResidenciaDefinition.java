package definitions;

import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.FondoPage;
import pageobjects.IdentificacionPage;
import pageobjects.ResidenciaPage;
import support.Captura;

import static definitions.hooks.driver;

public class ResidenciaDefinition {
    BotonPage boton;
    ResidenciaPage residencia;
    IdentificacionPage identificacion;
    Captura screenshot;
    FondoPage fondo;

    public ResidenciaDefinition() {
        boton = new BotonPage();
        residencia = new ResidenciaPage();
        identificacion = new IdentificacionPage();
        screenshot = new Captura();
        fondo = new FondoPage();
    }

    @Y("seleccionar el boton Si tengo")
    public void seleccionarElBotonSiTengo() {
        boton.clicBotonSiTengoResidencia();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("se debe actualizar la web y retornar a la Pantalla principal {string}")
    public void seDebeActualizarLaWebYRetornarALaPantallaPrincipal(String titulo) {
        identificacion.validarPantallaPrincipal(titulo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("dar clic en el boton Descargar del popup")
    public void darClicEnElBotonDescargarDelPopup() {
        boton.clicBotonDescargar();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("se mostrara las URL de descargas de los documentos a presentar")
    public void seMostraraLasURLDeDescargasDeLosDocumentosAPresentar() {

    }

    @Y("seleccione el boton No tengo")
    public void seleccioneElBotonNoTengo() {
        boton.clicBotonNoTengoResidencia();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("se mostrara la pantalla de {string}")
    public void seMostraraLaPantallaDe(String datosInversion) throws InterruptedException {
        Thread.sleep(3000);
        fondo.validarPasoFondoInversion(datosInversion);
        screenshot.capturarPaso(driver, "Screenshot");
    }
}