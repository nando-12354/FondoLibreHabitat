package pageobjects;

import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import support.util;

import java.util.List;

public class DatosPersonalesPage extends util {

    public DatosPersonalesPage() {
        PageFactory.initElements(driver,this);
    }
    public void seleccionarPrimerNombre(String valor) {
        WebElement opcion = driver.findElement(By.xpath("//input[@name='primerNombre' and @value='" + valor + "']/following-sibling::span"));
        opcion.click();
        System.out.println("Primer nombre seleccionado: " + opcion.getText());
    }
    public void seleccionarPrimerApellido(String valor) {
        WebElement opcion = driver.findElement(By.xpath("//input[@name='primerApellido' and @value='" + valor + "']/following-sibling::span"));
        opcion.click();
        System.out.println("Primer apellido seleccionado: " + opcion.getText());
    }
    public void seleccionarFechaEmisionDni(String valor) {
        WebElement opcion = driver.findElement(By.xpath("//input[@name='fechaEmision' and @value='" + valor + "']/following-sibling::span"));
        opcion.click();
        System.out.println("Fecha emision seleccionada: " + opcion.getText());
    }
    public void validarCamposPantalla(DataTable tabla) {
        List<String> campos = tabla.asList(String.class);
        for (String campo : campos) {
            By locator = By.xpath("//h2[contains(@class,'onboarding-page__section-title') and normalize-space()='" + campo + "']");
            WebElement elemento = driver.findElement(locator);
            Assert.assertTrue("No se encontró el campo: " + campo, elemento.isDisplayed());
        }
    }
}
