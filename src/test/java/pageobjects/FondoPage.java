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
    @FindBy (xpath = "//div[contains(@class,'stepper-label')]") protected WebElement pasoFondoInversion;
    @FindBy (xpath = "//p[contains(@class,'datos-inversion__saldo-valor')]") protected WebElement lblSaldo;
    @FindBy (xpath = "//button[contains(@class,'datos-inversion__saldo-toggle')]") protected WebElement btnToggleSaldo;
    @FindBy (xpath = "//p[contains(@class,'datos-inversion__tipo-fondo-valor')]") protected WebElement lblTipoFondo;
    @FindBy (xpath = "//button[contains(@class,'login-page__password-toggle')]") protected WebElement btnToggleMonto;
    @FindBy (xpath = "//input[@type='text']") protected WebElement txtMontoInversion;
    @FindBy (xpath = "//input[@value='unica']") protected WebElement rdFrecuenciaUnica;
    @FindBy (xpath = "//input[@value='mensual']") protected WebElement rdFrecuenciaMensual;
    @FindBy (xpath = "//input[@type='radio' and @name='fondo' and @value='1']") protected WebElement rdFondo1;
    @FindBy (xpath = "//input[@type='radio' and @name='fondo' and @value='2']") protected WebElement rdFondo2;
    @FindBy (xpath = "//input[@type='radio' and @name='fondo' and @value='3']") protected WebElement rdFondo3;
    @FindBy (xpath = "//input[@type='radio' and @name='fondo']") protected List<WebElement> rdFondos;

    public FondoPage() {
        PageFactory.initElements(driver,this);
    }
    public void validarPasoFondoInversion(String textoEsperado) {
        wait.until(ExpectedConditions.visibilityOf(pasoFondoInversion));
        String textoReal = pasoFondoInversion.getText()
                .replace("\n", " ")
                .replaceAll("\\s+", " ")
                .trim();
        String esperadoNormalizado = textoEsperado
                .replaceAll("\\s+", " ")
                .trim();
        Assert.assertEquals(
                "El texto del stepper no coincide.",
                esperadoNormalizado,
                textoReal
        );
        System.out.println("Paso: '" + pasoFondoInversion.getText() + "'");
    }
    public String validarSaldoVisible() {
        wait.until(ExpectedConditions.visibilityOf(lblSaldo));
        String saldoTexto = lblSaldo.getText();
        if (saldoTexto.contains("•")) {
            btnToggleSaldo.click();
            wait.until(ExpectedConditions.not(ExpectedConditions.textToBePresentInElement(lblSaldo, "•")));
        }
        String saldoFinal = lblSaldo.getText();
        Assert.assertTrue(
                "El saldo no tiene formato válido: " + saldoFinal,
                saldoFinal.matches("S/\\s?\\d+[\\.,]?\\d*")
        );
        return saldoFinal;
    }
    public String obtenerTipoFondo() {
        wait.until(ExpectedConditions.visibilityOf(lblTipoFondo));
        String tipoFondo = lblTipoFondo.getText().trim();
        System.out.println("Fondo del cliente: '" + tipoFondo + "'");
        Assert.assertFalse("El tipo de fondo está vacío.", tipoFondo.isEmpty());
        return tipoFondo;
    }
    public void clicVerMontoInversion() {
        wait.until(ExpectedConditions.visibilityOf(btnToggleMonto));
        btnToggleMonto.click();
    }
    public void ingresarMontoInversion(String monto) {
        wait.until(ExpectedConditions.visibilityOf(txtMontoInversion));
        txtMontoInversion.clear();
        txtMontoInversion.sendKeys(monto);
    }
    public void seleccionarFrecuenciaUnica() {
        wait.until(ExpectedConditions.elementToBeClickable(rdFrecuenciaUnica));
        wait.until(ExpectedConditions.visibilityOf(rdFrecuenciaUnica));
        rdFrecuenciaUnica.click();
    }
    public void seleccionarFrecuenciaMensual() {
        wait.until(ExpectedConditions.visibilityOf(rdFrecuenciaMensual));
        rdFrecuenciaMensual.click();
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
    public void seleccionarFondoPorNombre(String nombreFondo) {
        String xpathRadio =
                "//div[contains(@class,'seleccion-fondo__fondo-card')]" +
                "[.//div[normalize-space()='" + nombreFondo + "']]" +
                "//input[@type='radio']";
        WebElement radio = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(xpathRadio)));
        System.out.println("Fondo: '" + nombreFondo + "'");
        radio.click();
    }
    public void validarNombreFondo(String fondo) {
        boolean fondoValido = false;
        String xpath = "//div[normalize-space(text())='" + fondo + "']";

        try {
            WebElement fondoElemento = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath)));
            System.out.println("Fondos: '" + fondoElemento.getText() + "'");
            if (fondoElemento.isDisplayed() && fondoElemento.getText().equals(fondo.trim())) {
                fondoValido = true;
            }
        } catch (TimeoutException | NoSuchElementException e) {

        }
        Assert.assertTrue("El nombre del fondo: " + fondo.trim() + " no es igual o no se encontró.", fondoValido);
    }
}
