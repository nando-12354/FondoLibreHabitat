package definitions;

import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.ConfirmaSolicitudPage;
import pageobjects.TituloPage;
import support.Captura;

import static definitions.hooks.driver;

public class ConfirmaSolicitudDefinition {
    ConfirmaSolicitudPage confirmaSolicitud;
    Captura screenshot;
    BotonPage boton;
    TituloPage titulo;

    public ConfirmaSolicitudDefinition() {
        confirmaSolicitud = new ConfirmaSolicitudPage();
        screenshot = new Captura();
        boton = new BotonPage();
        titulo = new TituloPage();
    }

    @Entonces("se mostrara una pantalla de {string}")
    public void seMostraraUnaPantallaDe(String h1){
        titulo.validarTitulo_h1(h1);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Confirmar solicitud")
    public void darClicEnElBotonConfirmarSolicitud() {
        boton.clicBotonConfirmarSolicitud();
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
