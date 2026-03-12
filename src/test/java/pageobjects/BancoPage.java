package pageobjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import support.util;

public class BancoPage extends util {
    @FindBy(xpath = "(//input[@inputmode='numeric'])[1]") protected WebElement txtNumeroOperacion1;
    @FindBy(xpath = "(//input[@inputmode='numeric'])[2]") protected WebElement txtNumeroOperacion2;
    @FindBy(xpath = "(//input[@inputmode='numeric'])[3]") protected WebElement txtNumeroOperacion3;
    @FindBy(xpath = "(//input[@inputmode='numeric'])[4]") protected WebElement txtNumeroOperacion4;
    @FindBy(xpath = "(//input[@inputmode='numeric'])[5]") protected WebElement txtNumeroOperacion5;

    public BancoPage() {
        PageFactory.initElements(driver,this);
    }
    public void ingresarNumeroOperacion(String numeroOperacion) {
        wait.until(ExpectedConditions.visibilityOf(txtNumeroOperacion1));
        txtNumeroOperacion1.sendKeys(numeroOperacion.substring(0, 1));
        txtNumeroOperacion2.sendKeys(numeroOperacion.substring(1, 2));
        txtNumeroOperacion3.sendKeys(numeroOperacion.substring(2, 3));
        txtNumeroOperacion4.sendKeys(numeroOperacion.substring(3, 4));
        txtNumeroOperacion5.sendKeys(numeroOperacion.substring(4, 5));
        System.out.println("Número de operación ingresado: " + numeroOperacion);
    }
}
