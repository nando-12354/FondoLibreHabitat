package pageobjects;

import io.cucumber.datatable.DataTable;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import support.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

public class DatosPersonalesPage extends util {

    public DatosPersonalesPage() {
        PageFactory.initElements(driver,this);
    }
    public void validarTituloPantalla(String titulo) {
        boolean tituloValido = false;
        String xpath = "//h1[normalize-space()='" + titulo + "']";
        try {
            WebElement tituloElemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            if (tituloElemento.isDisplayed() && tituloElemento.getText().equals(titulo.trim())) {
                tituloValido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El label " + titulo.trim() + " no es igual o no se encontró.", tituloValido);
    }
    public void validarTituloFormulario(String titulo) throws InterruptedException {
        boolean tituloValido = false;
        String xpath = "//h1[normalize-space()='" + titulo + "']";
        Thread.sleep(3000);
        try {
            WebElement tituloElemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            if (tituloElemento.isDisplayed() && tituloElemento.getText().equals(titulo.trim())) {
                tituloValido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El label " + titulo.trim() + " no es igual o no se encontró.", tituloValido);
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
    public void validarCamposPantalla(DataTable tabla) {
        List<String> campos = tabla.asList(String.class);
        for (String campo : campos) {
            By locator = By.xpath(
                    "//h2[contains(@class,'onboarding-page__section-title') and normalize-space()='"
                            + campo + "']"
            );
            WebElement elemento = driver.findElement(locator);
            Assert.assertTrue("No se encontró el campo: " + campo, elemento.isDisplayed());
        }
    }
    public void seleccionarFechaNacimiento(String fecha) {
        By locator = By.xpath("//input[@type='date']");
        WebElement campoFecha = driver.findElement(locator);
        campoFecha.clear();
        campoFecha.sendKeys(convertirFormatoFecha(fecha));
    }
    private String convertirFormatoFecha(String fecha) {
        DateTimeFormatter formatoEntrada = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        DateTimeFormatter formatoSalida = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate fechaConvertida = LocalDate.parse(fecha, formatoEntrada);
        return fechaConvertida.format(formatoSalida);
    }
}
