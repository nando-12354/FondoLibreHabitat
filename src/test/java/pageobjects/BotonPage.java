package pageobjects;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import support.util;

public class BotonPage extends util {
    private By btnAceptarFirmarLocator = By.xpath("//button[normalize-space()='Aceptar y firmar']");
    private By btnContinuarLocator = By.xpath("//button[normalize-space()='Continuar']");
    @FindBy(xpath = "//button[@type='submit']") protected WebElement btnEmpezarInvertir;
    @FindBy(xpath = "//button[text()='Sí tengo']") protected WebElement btnSiTengoResidencia;
    @FindBy(xpath = "//button[text()='No tengo']") protected WebElement btnNoTengoResidencia;
    @FindBy(xpath = "//button[text()='Cerrar']") protected WebElement btnCerrar;
    @FindBy(xpath = "//button[text()='Descargar']") protected WebElement btnDescargar;
    @FindBy(xpath = "//button[text()='Volver']") protected WebElement btnVolver;
    @FindBy(xpath = "//button[text()='Siguiente']") protected WebElement btnSiguiente;
    @FindBy(xpath = "//button[text()='Continuar']") protected WebElement btnContinuar;
    @FindBy(xpath = "//button[text()='Aceptar']") protected WebElement btnAceptar;
    @FindBy(xpath = "//button[text()='Confirmar solicitud']") protected WebElement btnConfirmarSolicitud;
    @FindBy(xpath = "//button[text()='Cambiar tipo de fondo']") protected WebElement btnCambiarTipoFondo;
    @FindBy(xpath = "//button[text()='Aplicar cambio']") protected WebElement btnAplicarCambio;
    @FindBy(xpath = "//button[text()='Aceptar y firmar']") protected WebElement btnAceptarFirmar;
    @FindBy(xpath = "//button[text()='Enviar token']") protected WebElement btnEnviarToken;
    @FindBy(xpath = "//button[text()='Entendido']") protected WebElement btnEntendido;

    public BotonPage() {
        PageFactory.initElements(driver,this);
    }
    public void clicBotonEmpezarInvertir() {
        wait.until(ExpectedConditions.visibilityOf(btnEmpezarInvertir));
        btnEmpezarInvertir.click();
        System.out.println("Se hizo clic en el boton Empezar invertir");
    }
    public void clicBotonSiTengoResidencia() {
        wait.until(ExpectedConditions.elementToBeClickable(btnSiTengoResidencia));
        btnSiTengoResidencia.click();
    }
    public void clicBotonNoTengoResidencia() {
        wait.until(ExpectedConditions.elementToBeClickable(btnNoTengoResidencia));
        btnNoTengoResidencia.click();
        System.out.println("Se hizo clic en el boton No tengo");
    }
    public void clicBotonCerrar() {
        wait.until(ExpectedConditions.elementToBeClickable(btnCerrar));
        btnCerrar.click();
        System.out.println("Se hizo clic en el boton Cerrar");
    }
    public void clicBotonDescargar() {
        wait.until(ExpectedConditions.elementToBeClickable(btnDescargar));
        btnDescargar.click();
        System.out.println("Se hizo clic en el boton Descargar");
    }
    public void clicBotonVolver(){
        wait.until(ExpectedConditions.elementToBeClickable(btnVolver));
        btnVolver.click();
        System.out.println("Se hizo clic en el boton Volver");
    }
    public void clicBotonSiguiente(){
        wait.until(ExpectedConditions.elementToBeClickable(btnSiguiente));
        btnSiguiente.click();
        System.out.println("Se hizo clic en el boton Siguiente");
    }
    public void clicBotonContinuar(){
        wait.until(ExpectedConditions.elementToBeClickable(btnContinuar));
        btnContinuar.click();
        System.out.println("Se hizo clic en el boton Continuar");
    }
    public void clicBotonConfirmarSolicitud(){
        wait.until(ExpectedConditions.elementToBeClickable(btnConfirmarSolicitud));
        btnConfirmarSolicitud.click();
        System.out.println("Se hizo clic en el boton Confirmar solicitud");
    }
    public void clicBotonAceptar(){
        wait.until(ExpectedConditions.elementToBeClickable(btnAceptar));
        btnAceptar.click();
        System.out.println("Se hizo clic en el boton Aceptar");
    }
    public void clicBotonCambiarTipoFondo(){
        wait.until(ExpectedConditions.elementToBeClickable(btnCambiarTipoFondo));
        btnCambiarTipoFondo.click();
        System.out.println("Se hizo clic en el boton CambiarTipoFondo");
    }
    public void clicBotonApicarCambio(){
        wait.until(ExpectedConditions.elementToBeClickable(btnAplicarCambio));
        btnAplicarCambio.click();
        System.out.println("Se hizo clic en el boton Aplicar cambios");
    }
    public void clicBotonAceptarFirmar(){
        wait.until(ExpectedConditions.elementToBeClickable(btnAceptarFirmar));
        btnAceptarFirmar.click();
        System.out.println("Se hizo clic en el boton Aceptar firmar");
    }
    public void clicBotonEnviarToken(){
        wait.until(ExpectedConditions.elementToBeClickable(btnEnviarToken));
        btnEnviarToken.click();
        System.out.println("Se hizo clic en el boton Enviar token");
    }
    public void clicBotonEntendido(){
        wait.until(ExpectedConditions.elementToBeClickable(btnEntendido));
        btnEntendido.click();
        System.out.println("Se hizo clic en el boton Entendido");
    }
    public void clicBotonAceptarFirmarContinuar() {
        if (isElementPresent(btnAceptarFirmarLocator)) {
            WebElement btn = wait.until(ExpectedConditions.elementToBeClickable(btnAceptarFirmarLocator));
            btn.click();
        } else if (isElementPresent(btnContinuarLocator)) {
            WebElement btn = wait.until(ExpectedConditions.elementToBeClickable(btnContinuarLocator));
            btn.click();
        } else {
            Assert.fail("No se encontró ni el botón 'Aceptar y firmar' ni 'Continuar'.");
        }
    }
    private boolean isElementPresent(By locator) {
        return driver.findElements(locator).size() > 0;
    }
}