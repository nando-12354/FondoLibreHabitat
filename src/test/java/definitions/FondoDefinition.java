package definitions;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.PendingException;
import io.cucumber.java.es.E;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.FondoPage;
import support.Captura;

import java.util.List;

import static definitions.hooks.driver;

public class FondoDefinition {
    Captura screenshot;
    FondoPage fondo;
    BotonPage boton;

    public FondoDefinition() {
        screenshot = new Captura();
        fondo = new FondoPage();
        boton = new BotonPage();
    }

    @Y("seleccionar un Fondo a invertir {string}")
    public void seleccionarUnFondoAInvertir(String fondoNombre) {
        fondo.validarNombreFondo(fondoNombre);
        fondo.seleccionarFondoPorNombre(fondoNombre);
        hooks.escenarioActual.log("Fondo: " + fondoNombre);
        screenshot.capturarPaso(driver, "screenshot");
    }

    @Y("se mostrara la pantalla {string}")
    public void seMostraraLaPantalla(String paso) {
        fondo.validarPasoFondoInversion(paso);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("validar el Monto disponible del cliente")
    public void validarElMontoDisponibleDelCliente() {
        String monto = fondo.validarSaldoVisible();
        hooks.escenarioActual.log("Al día de hoy tienes: " + monto);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("validar el Tipo de fondo del cliente")
    public void validarElTipoDeFondoDelCliente() {
        String fondoActual = fondo.obtenerTipoFondo();
        hooks.escenarioActual.log("Tipo de fondo: " + fondoActual);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @E("ingresar el Monto a invertir {string}")
    public void ingresarElMontoAInvertir(String monto) {
        fondo.clicVerMontoInversion();
        fondo.ingresarMontoInversion(monto);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Frecuencia de inversion Unica")
    public void seleccionarLaFrecuenciaDeInversionUnica() {
        fondo.seleccionarFrecuenciaUnica();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Frecuencia de inversion Mensual")
    public void seleccionarLaFrecuenciaDeInversionMensual() {
        fondo.seleccionarFrecuenciaMensual();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Aceptar y firmar")
    public void darClicEnElBotonAceptarYFirmar() {
        boton.clicBotonAceptarFirmarContinuar();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Continuar")
    public void darClicEnElBotonContinuar() {
        boton.clicBotonContinuar();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("se mostrara los Fondos a seleccionar")
    public void seMostraraLosFondosASeleccionar(DataTable fondos) {
        List<String> opciones = fondos.asList();
        for (String opcion : opciones) {
            fondo.validarNombreFondo(opcion);
        }
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar un Fondo a cambiar {string}")
    public void seleccionarUnFondoACambiar(String nombreFondo) {
        fondo.validarNombreFondo(nombreFondo);
        fondo.seleccionarFondoPorNombre(nombreFondo);
        hooks.escenarioActual.log("Fondo: " + nombreFondo);
        screenshot.capturarPaso(driver, "screenshot");
    }

    @Y("validar el nuevo Fondo a invertir")
    public void validarElNuevoFondoAInvertir() {
        String fondoActual = fondo.obtenerTipoFondo();
        hooks.escenarioActual.log("Tipo de fondo: " + fondoActual);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Cambiar tipo de fondo")
    public void darClicEnElBotonCambiarTipoDeFondo() {
        boton.clicBotonCambiarTipoFondo();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Aplicar cambios")
    public void darClicEnElBotonAplicarCambios() {
        boton.clicBotonApicarCambio();
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
