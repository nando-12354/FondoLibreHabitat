package definitions;

import io.cucumber.java.PendingException;
import io.cucumber.java.es.E;
import io.cucumber.java.es.Y;
import pageobjects.BancoPage;
import pageobjects.BotonPage;
import support.Captura;

import static definitions.hooks.driver;

public class BancoDefinition {
    BancoPage banco;
    BotonPage boton;
    Captura screenshot;

    public BancoDefinition() {
        banco = new BancoPage();
        boton = new BotonPage();
        screenshot = new Captura();
    }

    @E("ingresar el Numero de operacion {string}")
    public void ingresarElNumeroDeOperacion(String numeroOperacion) {
        banco.ingresarNumeroOperacion(numeroOperacion);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Invertir")
    public void darClicEnElBotonInvertir() {
        boton.clicBotonInvertir();
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
