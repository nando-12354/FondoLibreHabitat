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
    public void validarTituloH1(String h1) {
        boolean h1Valido = false;
        String xpath = "//h1[text()='" + h1.trim() + "']";

        try {
            WebElement h1Elemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            if (h1Elemento.isDisplayed() && h1Elemento.getText().equals(h1.trim())) {
                h1Valido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El h1 " + h1.trim() + " no es igual o no se encontró.", h1Valido);
    }
    public void validarTitulo(String h2) {
        boolean h2Valido = false;
        String xpath = "//h2[text()='" + h2.trim() + "']";

        try {
            WebElement h2Elemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            System.out.println("Titulo encontrado: '" + h2Elemento.getText() + "'");
            if (h2Elemento.isDisplayed() && h2Elemento.getText().equals(h2.trim())) {
                h2Valido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El h2 " + h2.trim() + " no es igual o no se encontró.", h2Valido);
    }
}
