package pageobjects;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import support.Captura;
import support.util;

import java.util.List;

public class EnlacesPage extends util {
    @FindBy(xpath = "//p[contains(@class,'login-page__terms-intro')]") private WebElement lblPoliticaPrivacidad;
    @FindBy(xpath = "(//a[@href='https://www.afphabitat.com.pe/uploads/2019/11/Politica-de-privacidad-2019.pdf'])[1]") private WebElement enlacePoliticaPrivacidad;
    @FindBy(xpath = "(//a[@href='https://www.afphabitat.com.pe/uploads/2019/11/Politica-de-privacidad-2019.pdf'])[2]") private WebElement enlaceDatosPersonales;
    @FindBy(xpath = "(//a[@href='https://www.afphabitat.com.pe/uploads/2019/11/Politica-de-privacidad-2019.pdf'])[3]") private WebElement enlaceCompartirDatos;
    @FindBy(xpath = "(//a[@class='login-page__terms-link'])[2]") private WebElement enlaceTerminosComisiones;

    public EnlacesPage() {
        PageFactory.initElements(driver,this);
    }
    //public void validarLabelPoliticaPrivacidad(String textoEsperado) {
    //    wait.until(ExpectedConditions.visibilityOf(lblPoliticaPrivacidad));
    //    String textoReal = lblPoliticaPrivacidad.getText()
    //            .replace("\n", " ")
    //            .trim();
    //    Assert.assertEquals(textoReal, textoEsperado);
    //}
    public void validarLabelPoliticaPrivacidad(String textoEsperado) {

        By contenedor = By.className("login-page__terms");

        WebElement bloque = wait.until(
                ExpectedConditions.visibilityOfElementLocated(contenedor)
        );

        String textoCompleto = bloque.getText()
                .replaceAll("\\s+", " ")
                .trim();

        String esperadoNormalizado = textoEsperado
                .replaceAll("\\s+", " ")
                .trim();

        Assert.assertTrue(
                "No se encontró el texto esperado.",
                textoCompleto.contains(esperadoNormalizado)
        );
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
    public void manejarNuevaVentana(){
        manejarNuevaPestana(5);
    }
}
