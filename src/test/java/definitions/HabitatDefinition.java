package definitions;

import io.cucumber.java.es.Dado;

import static definitions.hooks.driver;

public class HabitatDefinition {

    @Dado("que la web este disponible")
    public void queLaWebEsteDisponible() {
        driver.get("https://kind-smoke-086c8780f.2.azurestaticapps.net/");
        System.out.println("Ingresando a la web: " + driver.getTitle());
        //hooks.word.agregarPasoConEnlace("Que la web esté disponible: ", "https://apolodesa01.afphabitat.com.pe");
    }
}
