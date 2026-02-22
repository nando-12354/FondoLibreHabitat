package pageobjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import support.util;

public class DatosPersonalesPage extends util {

    public DatosPersonalesPage() {
        PageFactory.initElements(driver,this);
    }
    public void seleccionarPrimerNombre(String valor) {
        WebElement opcion = driver.findElement(
                By.xpath("//input[@name='primerNombre' and @value='" + valor + "']/following-sibling::span"));
        opcion.click();
    }
    public void seleccionarPrimerApellido(String valor) {
        WebElement opcion = driver.findElement(
                By.xpath("//input[@name='primerApellido' and @value='" + valor + "']/following-sibling::span"));
        opcion.click();
    }
    public void seleccionarFechaEmisionDni(String valor) {
        WebElement opcion = driver.findElement(
                By.xpath("//input[@name='fechaEmision' and @value='" + valor + "']/following-sibling::span"));
        opcion.click();
    }
}
