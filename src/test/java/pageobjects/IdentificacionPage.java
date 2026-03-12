package pageobjects;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import support.util;

public class IdentificacionPage extends util {
    @FindBy(xpath = "//select[contains(@class,'input-field')]") protected WebElement cmbTipoDocumento;
    @FindBy(xpath = "//div[@class='relative']/input[@type='text']") protected WebElement txtNumeroDocumento;
    @FindBy(xpath = "//span[contains(text(),'Acepto los términos')]") protected WebElement chkTerminos;
    @FindBy(xpath = "//span[contains(text(),'Autorizo el uso de mis datos personales')]") protected WebElement chkDatosPersonales;
    @FindBy(xpath = "//span[contains(text(),'compartir mis datos')]") protected WebElement chkCompartirDatos;
    @FindBy(xpath = "//input[@type='password']") protected WebElement btnClaveWeb;
    @FindBy(xpath = "//section[contains(@class,'login-page__hero')]") protected WebElement tituloPrincipal;
    @FindBy(xpath = "//label[text()='Clave web']") protected WebElement lblClaveWeb;
    private By tituloPrincipalLocator = By.xpath("//section[contains(@class,'login-page__hero')]");

    public IdentificacionPage() {
        PageFactory.initElements(driver,this);
    }
    public void seleccionarTipoDocumento(String tipoDocumento) {
        wait.until(ExpectedConditions.visibilityOf(cmbTipoDocumento));
        Select select = new Select(cmbTipoDocumento);
        select.selectByVisibleText(tipoDocumento);
        System.out.println("Seleccionando tipo de documento: " + tipoDocumento);
        System.out.println("Encoding JVM: " + System.getProperty("file.encoding"));
        System.out.println("Encoding JVM: " + System.getProperty("file.encoding"));
        System.out.println("áéíóú????...!!¿?: " + tipoDocumento);
    }
    public void ingresarNumeroDocumento(String numeroDocumento) throws InterruptedException {
        wait.until(ExpectedConditions.visibilityOf(txtNumeroDocumento));
        txtNumeroDocumento.sendKeys(numeroDocumento);
        System.out.println("Ingresando numero de documento: " + numeroDocumento);
        Thread.sleep(5000);
    }
    public void autorizarTerminosCondiciones() throws InterruptedException {
        wait.until(ExpectedConditions.elementToBeClickable(chkTerminos));
        Thread.sleep(3000);
        chkTerminos.click();
        System.out.println("Se hizo clic en la Autorizacion Terminos y condiciones");
    }
    public void autorizarDatosPersonales() throws InterruptedException {
        wait.until(ExpectedConditions.elementToBeClickable(chkDatosPersonales));
        Thread.sleep(2500);
        chkDatosPersonales.click();
        System.out.println("Se hizo clic en la Autorizacion de datos personales");
    }
    public void autorizarCompartirDatos() {
        wait.until(ExpectedConditions.elementToBeClickable(chkCompartirDatos));
        chkCompartirDatos.click();
        System.out.println("Se hizo clic en Compartir datos personales");
    }
    public void ingresarClaveWeb(String clave) throws InterruptedException {
        wait.until(ExpectedConditions.visibilityOf(btnClaveWeb));
        Thread.sleep(3000);
        btnClaveWeb.sendKeys(clave);
    }
    public void validarPantallaPrincipal(String textoEsperado) {
        WebElement titulo = wait.until(ExpectedConditions.visibilityOfElementLocated(tituloPrincipalLocator));
        String textoReal = titulo.getText().replaceAll("\\s+", " ").trim();
        String esperadoNormalizado = textoEsperado.replaceAll("\\s+", " ").trim();
        Assert.assertEquals("El título principal no coincide.", esperadoNormalizado, textoReal);
    }
    public void validarLabel(String label) {
        boolean labelValido = false;
        String xpath = "//label[text()='" + label.trim() + "']";

        try {
            WebElement labelElemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            System.out.println("Label encontrado: '" + labelElemento.getText() + "'");
            if (labelElemento.isDisplayed() && labelElemento.getText().equals(label.trim())) {
                labelValido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El label " + label.trim() + " no es igual o no se encontró.", labelValido);
    }
}