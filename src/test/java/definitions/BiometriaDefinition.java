package definitions;

import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.ResidenciaPage;
import pageobjects.TituloPage;
import support.Captura;

import static definitions.hooks.driver;

public class BiometriaDefinition {
    ResidenciaPage residencia;
    Captura screenshot;
    BotonPage boton;
    TituloPage titulo;

    public BiometriaDefinition() {
        residencia = new ResidenciaPage();
        screenshot = new Captura();
        boton = new BotonPage();
        titulo = new TituloPage();
    }

    @Y("se mostrara una pantalla {string}")
    public void seMostraraUnaPantalla(String h1) {
        titulo.validarTitulo_h1(h1);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Tomar selfie")
    public void darClicEnElBotonTomarSelfie() {
        boton.clicBotonTomarSelfie();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("se mostrara Cinco popups de {string} a seguir")
    public void seMostraraCincoPopupsDeASeguir(String considerancion) {
        titulo.validarTitulo(considerancion);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("validar el popup {string}")
    public void validarElPopup(String considerancion) {
        titulo.validarTitulo(considerancion);
        screenshot.capturarPaso(driver, "Screenshot");
        boton.clicBotonSiguiente();
    }
}
