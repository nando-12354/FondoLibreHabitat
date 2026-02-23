package definitions;

import io.cucumber.java.es.Entonces;
import pageobjects.ConfirmaSolicitudPage;
import support.Captura;

import static definitions.hooks.driver;

public class ConfirmaSolicitudDefinition {
    Captura screenshot;
    ConfirmaSolicitudPage confirmaSolicitud;

    public ConfirmaSolicitudDefinition() {
        screenshot = new Captura();
        confirmaSolicitud = new ConfirmaSolicitudPage();
    }

    @Entonces("se mostrara una pantalla de {string}")
    public void seMostraraUnaPantallaDe(String titulo){
        confirmaSolicitud.validarTitulo_h1(titulo);
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
