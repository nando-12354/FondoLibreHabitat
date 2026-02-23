package definitions;

import io.cucumber.java.PendingException;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.EnlacesPage;
import pageobjects.IdentificacionPage;
import support.Captura;

import static definitions.hooks.driver;

public class EnlacesDefinition {
    Captura screenshot;
    EnlacesPage enlace;
    IdentificacionPage identificacion;

    public EnlacesDefinition() {
        screenshot = new Captura();
        enlace = new EnlacesPage();
        identificacion = new IdentificacionPage();
    }

    @Cuando("se muestre la Pantalla principal {string}")
    public void seMuestreLaPantallaPrincipal(String titulo) {
        identificacion.validarPantallaPrincipal(titulo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("validar {string}")
    public void validar(String politica) {
        enlace.validarLabelPoliticaPrivacidad(politica);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el enlace Politica de Privacidad")
    public void darClicEnElEnlacePoliticaDePrivacidad() {
        enlace.clicEnlacePoliticaPrivacidad_1();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el enlace Politica de Privacidad de Autorizacion de uso de datos personales")
    public void darClicEnElEnlacePoliticaDePrivacidadDeAutorizacionDeUsoDeDatosPersonales() {
        enlace.clicEnlacePoliticaPrivacidad_2();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el enlace Politica de Privacidad de Autorizacion para Compartir Datos")
    public void darClicEnElEnlacePoliticaDePrivacidadDeAutorizacionParaCompartirDatos() {
        enlace.clicEnlacePoliticaPrivacidad_3();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el enlace Aqui")
    public void darClicEnElEnlaceAqui() {
        enlace.clicEnlaceTerminosComisiones();
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
