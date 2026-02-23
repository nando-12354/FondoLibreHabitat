package pageobjects;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import support.util;

import java.util.List;

public class FondoPage extends util {
    @FindBy (xpath = "//input[@type='radio' and @name='fondo' and @value='1']") protected WebElement rdFondo1;
    @FindBy (xpath = "//input[@type='radio' and @name='fondo' and @value='2']") protected WebElement rdFondo2;
    @FindBy (xpath = "//input[@type='radio' and @name='fondo' and @value='3']") protected WebElement rdFondo3;
    @FindBy (xpath = "//input[@type='radio' and @name='fondo']") protected List<WebElement> rdFondos;

    public FondoPage() {
        PageFactory.initElements(driver,this);
    }
    public void seleccionarFondo1_Conservador() {
        wait.until(ExpectedConditions.elementToBeClickable(rdFondo1));
        rdFondo1.click();
    }
    public void seleccionarFondo2_Moderado() {
        wait.until(ExpectedConditions.elementToBeClickable(rdFondo2));
        rdFondo2.click();
    }
    public void seleccionarFondo3_Arriesgado() {
        wait.until(ExpectedConditions.elementToBeClickable(rdFondo3));
        rdFondo3.click();
    }
    public void seleccionarPrimerFondoDisponible() {
        for (WebElement fondo : rdFondos) {
            if (fondo.isDisplayed() && fondo.isEnabled()) {
                fondo.click();
                System.out.println("Se seleccionó el fondo con value: " + fondo.getAttribute("value"));
                return;
            }
        }
        throw new RuntimeException("No hay fondos disponibles para seleccionar");
    }
    public void validarNombreFondo(String fondo) {
        boolean fondoValido = false;
        String xpath = "//div[text()='" + fondo + "']";

        try {
            WebElement fondoElemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            if (fondoElemento.isDisplayed() && fondoElemento.getText().equals(fondo.trim())) {
                fondoValido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El nombre del fondo: " + fondo.trim() + " no es igual o no se encontró.", fondoValido);
    }
}
