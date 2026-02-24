package definitions;

import io.cucumber.java.PendingException;
import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.ConfirmaSolicitudPage;
import support.Captura;

import static definitions.hooks.driver;

public class ConfirmaSolicitudDefinition {
    Captura screenshot;
    BotonPage boton;
    ConfirmaSolicitudPage confirmaSolicitud;

    public ConfirmaSolicitudDefinition() {
        screenshot = new Captura();
        boton = new BotonPage();
        confirmaSolicitud = new ConfirmaSolicitudPage();
    }

    @Entonces("se mostrara una pantalla de {string}")
    public void seMostraraUnaPantallaDe(String titulo){
        confirmaSolicitud.validarTitulo_h1(titulo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Confirmar solicitud")
    public void darClicEnElBotonConfirmarSolicitud() {
        boton.clicBotonConfirmarSolicitud();
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
