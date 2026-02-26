package definitions;

import io.cucumber.java.PendingException;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.E;
import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.FondoPage;
import pageobjects.OrigenFondoPage;
import pageobjects.ResidenciaPage;
import support.Captura;

import static definitions.hooks.driver;

public class OrigenFondoDefinition {
    Captura screenshot;
    FondoPage fondo;
    ResidenciaPage residencia;
    BotonPage boton;
    OrigenFondoPage origen;

    public OrigenFondoDefinition() {
        screenshot = new Captura();
        fondo = new FondoPage();
        residencia = new ResidenciaPage();
        boton = new BotonPage();
        origen = new OrigenFondoPage();
    }

    @E("ingresar el Monto a invertir mayor a {string}")
    public void ingresarElMontoAInvertirMayorA(String montoMayor) {
        fondo.clicVerMontoInversion();
        fondo.ingresarMontoInversion(montoMayor);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Cuando("se muestre un popup de {string}")
    public void seMuestreUnPopupDe(String titulo) {
        residencia.validarTitulo(titulo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Aceptar del popup")
    public void darClicEnElBotonAceptarDelPopup() {
        boton.clicBotonAceptar();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("seleccionar el Origen de los fondos {string}")
    public void seleccionarElOrigenDeLosFondos(String origenFondo) {
        origen.seleccionarOrigenFondo(origenFondo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @E("ingresar el Cargo {string}")
    public void ingresarElCargo(String cargo) {
        origen.ingresarCargo(cargo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @E("ingresar el Tiempo de servicio {string}")
    public void ingresarElTiempoDeServicio(String tiempoServicio) {
        origen.ingresarTiempoServicio(tiempoServicio);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Tiempo {string}")
    public void seleccionarElTiempo(String tiempo){
        origen.seleccionarTiempo(tiempo);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar el Rango de Ingreso promedio mensual {string}")
    public void seleccionarElRangoDeIngresoPromedioMensual(String promedioMensual) {
        origen.seleccionarPromedioMensual(promedioMensual);
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
