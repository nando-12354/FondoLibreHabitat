package pageobjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import support.util;

public class TokenPage extends util {
    By selectDestinoToken = By.name("destino-token");

    public TokenPage() {
        PageFactory.initElements(driver, this);
    }
    public void seleccionarDestinoTokenCorreo() {
        WebElement combo = wait.until(ExpectedConditions.elementToBeClickable(selectDestinoToken));
        Select select = new Select(combo);
        select.selectByIndex(1); // 0 -> Seleccionar 1 -> Correo 2 -> Celular
        System.out.println("Destino seleccionado: " + select.getFirstSelectedOption().getText());
    }
    public void seleccionarDestinoTokenCelular() {
        WebElement combo = wait.until(ExpectedConditions.elementToBeClickable(selectDestinoToken));
        Select select = new Select(combo);
        select.selectByIndex(2); // 0->Seleccionar 1->Correo 2->Celular
        System.out.println("Destino seleccionado: " + select.getFirstSelectedOption().getText());
    }
}
