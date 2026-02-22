package pageobjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import support.util;

public class BotonPage extends util {

    @FindBy(xpath = "//button[@type='submit']") protected WebElement btnEmpezarInvertir;
    @FindBy(xpath = "//button[text()='Sí tengo']") protected WebElement btnSiTengoResidencia;
    @FindBy(xpath = "//button[text()='No tengo']") protected WebElement btnNoTengoResidencia;
    @FindBy(xpath = "//button[text()='Cerrar']") protected WebElement btnCerrar;
    @FindBy(xpath = "//button[text()='Descargar']") protected WebElement btnDescargar;
    @FindBy(xpath = "//button[text()='Volver']") protected WebElement btnVolver;
    @FindBy(xpath = "//button[text()='Siguiente']") protected WebElement btnSiguiente;
    @FindBy(xpath = "//button[text()='Continuar']") protected WebElement btnContinuar;

    public BotonPage() {
        PageFactory.initElements(driver,this);
    }
    public void clicBotonEmpezarInvertir() {
        wait.until(ExpectedConditions.visibilityOf(btnEmpezarInvertir));
        btnEmpezarInvertir.click();
    }
    public void clicBotonSiTengoResidencia() {
        wait.until(ExpectedConditions.elementToBeClickable(btnSiTengoResidencia));
        btnSiTengoResidencia.click();
    }
    public void clicBotonNoTengoResidencia() {
        wait.until(ExpectedConditions.elementToBeClickable(btnNoTengoResidencia));
        btnNoTengoResidencia.click();
    }
    public void clicBotonCerrar() {
        wait.until(ExpectedConditions.elementToBeClickable(btnCerrar));
        btnCerrar.click();
    }
    public void clicBotonDescargar() {
        wait.until(ExpectedConditions.elementToBeClickable(btnDescargar));
        btnDescargar.click();
    }
    public void clicBotonVolver(){
        wait.until(ExpectedConditions.elementToBeClickable(btnVolver));
        btnVolver.click();
    }
    public void clicBotonSiguiente(){
        wait.until(ExpectedConditions.elementToBeClickable(btnSiguiente));
        btnSiguiente.click();
    }
    public void clicBotonContinuar(){
        wait.until(ExpectedConditions.elementToBeClickable(btnContinuar));
        btnContinuar.click();
    }
}
