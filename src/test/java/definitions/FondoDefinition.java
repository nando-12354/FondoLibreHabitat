package definitions;

import io.cucumber.java.es.Y;
import pageobjects.FondoPage;

public class FondoDefinition {
    FondoPage fondo;

    public FondoDefinition() {
        fondo = new FondoPage();
    }

    @Y("seleccionar un Fondo a invertir {string}")
    public void seleccionarUnFondoAInvertir(String fondoNombre) {
        fondo.validarNombreFondo(fondoNombre);
        fondo.seleccionarFondo1_Conservador();
    }
}
