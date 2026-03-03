package pageobjects;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import support.util;

public class ResidenciaPage extends util {

    public ResidenciaPage() {
        PageFactory.initElements(driver,this);
    }
    public void validarTitulo_h1(String h1) {
        boolean h1Valido = false;
        String xpath = "//h1[normalize-space(text())='" + h1.trim() + "']";

        try {
            WebElement h1Elemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            if (h1Elemento.isDisplayed() && h1Elemento.getText().equals(h1.trim())) {
                h1Valido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El h1 " + h1.trim() + " no es igual o no se encontró.", h1Valido);
    }
    public void validarTitulo(String textoEsperado) {
        String texto = textoEsperado.trim();
        String xpath = "//h2[normalize-space()='" + texto + "']" + " | " + "//p[normalize-space()='" + texto + "']";
        System.out.println("Buscando título con texto: '" + texto + "'");
        try {
            WebElement elemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            String textoReal = elemento.getText().trim();
            System.out.println("Elemento encontrado (" + elemento.getTagName() + "): '" + textoReal + "'");
            Assert.assertEquals("El texto del título no coincide.", texto, textoReal);
        } catch (TimeoutException e) {
            Assert.fail("No se encontró el título: " + texto);
        }
    }
}
