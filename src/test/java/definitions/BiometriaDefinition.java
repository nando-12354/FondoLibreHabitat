package definitions;

import io.cucumber.java.PendingException;
import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.ConfirmaSolicitudPage;
import pageobjects.ResidenciaPage;
import support.Captura;

import static definitions.hooks.driver;

public class BiometriaDefinition {
    Captura screenshot;
    BotonPage boton;
    ResidenciaPage residencia;

    public BiometriaDefinition() {
    }

    @Y("se mostrara una pantalla {string}")
    public void seMostraraUnaPantalla(String h1) {
        residencia.validarTitulo_h1(h1);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Tomar selfie")
    public void darClicEnElBotonTomarSelfie() {
        boton.clicBotonTomarSelfie();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("se mostrara Cinco popups de {string} a seguir")
    public void seMostraraCincoPopupsDeASeguir(String considerancion) {
        residencia.validarTitulo(considerancion);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("validar el popup {string}")
    public void validarElPopup(String considerancion) {
        residencia.validarTitulo(considerancion);
        screenshot.capturarPaso(driver, "Screenshot");
        boton.clicBotonSiguiente();
    }
}
