package definitions;

import io.cucumber.java.PendingException;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.E;
import io.cucumber.java.es.Entonces;
import io.cucumber.java.es.Y;
import pageobjects.BotonPage;
import pageobjects.IdentificacionPage;
import pageobjects.ResidenciaPage;
import support.Captura;

import static definitions.hooks.driver;

public class IdentificacionDefinition {
    BotonPage boton;
    IdentificacionPage identificacion;
    ResidenciaPage residencia;
    Captura screenshot;

    public IdentificacionDefinition() {
        boton = new BotonPage();
        identificacion = new IdentificacionPage();
        residencia = new ResidenciaPage();
        screenshot = new Captura();
    }

    @Cuando("seleccione el Tipo de Documento {string}")
    public void seleccioneElTipoDeDocumento(String tipoDocumento) {
        identificacion.seleccionarTipoDocumento(tipoDocumento);
        screenshot.capturarPaso(driver, "Screenshot: " + tipoDocumento);
    }

    @E("ingrese el Numero de Documento {string}")
    public void ingreseElNumeroDeDocumento(String numeroDocumento) throws InterruptedException{
        identificacion.ingresarNumeroDocumento(numeroDocumento);
        screenshot.capturarPaso(driver, "Screenshot: " + numeroDocumento);
    }

    @Y("seleccionar la Autorizacion de uso de datos personales")
    public void seleccionarLaAutorizacionDeUsoDeDatosPersonales() throws InterruptedException{
        identificacion.autorizarDatosPersonales();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar la Autorizacion de compartir datos con PRUDENTIAL")
    public void seleccionarLaAutorizacionDeCompartirDatosConPRUDENTIAL() {
        identificacion.autorizarCompartirDatos();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Empezar a invertir")
    public void darClicEnElBotonEmpezarAInvertir() {
        boton.clicBotonEmpezarInvertir();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("se mostrara un popup de {string}")
    public void seMostraraUnPopupDe(String residenciaFiscal) {
        residencia.validarTitulo(residenciaFiscal);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @E("ingrese la clave web del cliente {string}")
    public void ingreseLaClaveWebDelCliente(String clave) throws InterruptedException{
        identificacion.ingresarClaveWeb(clave);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("se mostrara un popup de advertencia {string}")
    public void seMostraraUnPopupDeAdvertencia(String spp) {
        residencia.validarTitulo(spp);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("dar clic en el boton Cerrar del popup")
    public void darClicEnElBotonCerrarDelPopup() {
        boton.clicBotonCerrar();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Cuando("se muestre un campo nuevo de ingreso {string}")
    public void seMuestreUnCampoNuevoDeIngreso(String claveWeb) {
        identificacion.validarLabel(claveWeb);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Entonces("ingresar la Clave web {string}")
    public void ingresarLaClaveWeb(String clave) throws InterruptedException{
        identificacion.ingresarClaveWeb(clave);
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar Acepto los terminos y comisiones asociados a la apertura y debitos para el fondo libre habitat mostrado aqui")
    public void seleccionarAceptoLosTerminosYComisionesAsociadosALaAperturaYDebitosParaElFondoLibreHabitatMostradoAqui() throws InterruptedException {
        identificacion.autorizarTerminosCondiciones();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar Autorizo el uso de mis datos personales para fines publicitarios conforme a la Politica de Privacidad")
    public void seleccionarAutorizoElUsoDeMisDatosPersonalesParaFinesPublicitariosConformeALaPoliticaDePrivacidad() throws InterruptedException {
        identificacion.autorizarDatosPersonales();
        screenshot.capturarPaso(driver, "Screenshot");
    }

    @Y("seleccionar Autorizo a AFP Habitat a compartir mis datos con Prudentialsaf SAC para fines informativos comerciales segun la Politica de Privacidad")
    public void seleccionarAutorizoAAFPHabitatACompartirMisDatosConPrudentialsafSACParaFinesInformativosComercialesSegunLaPoliticaDePrivacidad() {
        identificacion.autorizarCompartirDatos();
        screenshot.capturarPaso(driver, "Screenshot");
    }
}
