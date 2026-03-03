package definitions;

import io.cucumber.java.PendingException;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.TokenPage;
import support.Captura;

import static definitions.hooks.driver;

public class TokenDefinition {
    TokenPage token;
    BotonPage boton;
    Captura screenshot;

    public TokenDefinition() {
        token = new TokenPage();
        boton = new BotonPage();
        screenshot = new Captura();
    }

    @Y("seleccionar el medio por el cual desea recibir su token digital")
    public void seleccionarElMedioPorElCualDeseaRecibirSuTokenDigital() {
        token.seleccionarDestinoTokenCorreo();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Enviar token")
    public void darClicEnElBotonEnviarToken() {
        boton.clicBotonEnviarToken();
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
