package pageobjects;

import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import support.util;

public class EnlacesPage extends util {
    @FindBy(xpath = "//p[contains(@class,'login-page__terms-intro')]") private WebElement lblPoliticaPrivacidad;
    @FindBy(xpath = "(//a[@href='/politica-privacidad'])[1]") private WebElement enlacePoliticaPrivacidad;
    @FindBy(xpath = "(//a[@href='/politica-privacidad'])[2]") private WebElement enlaceDatosPersonales;
    @FindBy(xpath = "(//a[@href='/politica-privacidad'])[3]") private WebElement enlaceCompartirDatos;
    @FindBy(xpath = "//a[@href='/terminos-comisiones']") private WebElement enlaceTerminosComisiones;

    public EnlacesPage() {
        PageFactory.initElements(driver,this);
    }
    public void validarLabelPoliticaPrivacidad(String textoEsperado) {
        wait.until(ExpectedConditions.visibilityOf(lblPoliticaPrivacidad));
        String textoReal = lblPoliticaPrivacidad.getText()
                .replace("\n", " ")
                .trim();
        Assert.assertEquals(textoReal, textoEsperado);
    }
    public void clicEnlacePoliticaPrivacidad_1() {
        wait.until(ExpectedConditions.elementToBeClickable(enlacePoliticaPrivacidad));
        enlacePoliticaPrivacidad.click();
    }
    public void clicEnlacePoliticaPrivacidad_2() {
        wait.until(ExpectedConditions.elementToBeClickable(enlaceDatosPersonales));
        enlaceDatosPersonales.click();
    }
    public void clicEnlacePoliticaPrivacidad_3() {
        wait.until(ExpectedConditions.elementToBeClickable(enlaceCompartirDatos));
        enlaceCompartirDatos.click();
    }
    public void clicEnlaceTerminosComisiones() {
        wait.until(ExpectedConditions.elementToBeClickable(enlaceTerminosComisiones));
        enlaceTerminosComisiones.click();
    }
}
