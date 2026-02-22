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
    @FindBy(xpath = "//section[contains(@class,'login-page__hero')]") private WebElement tituloPrincipal;
    @FindBy(xpath = "//label[text()='Clave web']") private WebElement lblClaveWeb;

    public IdentificacionPage() {
        PageFactory.initElements(driver,this);
    }
    public void seleccionarTipoDocumento(String tipoDocumento) {
        wait.until(ExpectedConditions.visibilityOf(cmbTipoDocumento));
        Select select = new Select(cmbTipoDocumento);
        select.selectByVisibleText(tipoDocumento);
    }
    public void ingresarNumeroDocumento(String numeroDocumento) throws InterruptedException {
        wait.until(ExpectedConditions.visibilityOf(txtNumeroDocumento));
        txtNumeroDocumento.sendKeys(numeroDocumento);
        Thread.sleep(5000);
    }
    public void autorizarTerminosCondiciones() throws InterruptedException {
        wait.until(ExpectedConditions.elementToBeClickable(chkTerminos));
        Thread.sleep(3000);
        chkTerminos.click();
    }
    public void autorizarDatosPersonales() throws InterruptedException {
        wait.until(ExpectedConditions.elementToBeClickable(chkDatosPersonales));
        chkDatosPersonales.click();
    }
    public void autorizarCompartirDatos() {
        wait.until(ExpectedConditions.elementToBeClickable(chkCompartirDatos));
        chkCompartirDatos.click();
    }
    public void ingresarClaveWeb(String clave) throws InterruptedException {
        wait.until(ExpectedConditions.visibilityOf(btnClaveWeb));
        Thread.sleep(3000);
        btnClaveWeb.sendKeys(clave);
    }
    public void validarPantallaPrincipal(String textoEsperado) {
        wait.until(ExpectedConditions.visibilityOf(tituloPrincipal));
        String textoReal = tituloPrincipal.getText()
                .replace("\n", " ")
                .trim();
        Assert.assertEquals(textoReal, textoEsperado);
    }
    public void validarLabel(String label) {
        boolean labelValido = false;
        String xpath = "//label[text()='" + label.trim() + "']";

        try {
            WebElement labelElemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            if (labelElemento.isDisplayed() && labelElemento.getText().equals(label.trim())) {
                labelValido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El label " + label.trim() + " no es igual o no se encontró.", labelValido);
    }
}