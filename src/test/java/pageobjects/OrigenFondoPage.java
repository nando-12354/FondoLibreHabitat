package pageobjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import support.util;

public class OrigenFondoPage extends util {
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::select[1]") protected WebElement cmbOrigenFondo;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::select[2]") protected WebElement cmbTipoTrabajador;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::select[3]") protected WebElement cmbTiempo;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::select[4]") protected WebElement cmbIngresoPromedioMensual;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::select[5]") protected WebElement cmbDepartamento;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::select[6]") protected WebElement cmbProvincia;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::select[7]") protected WebElement cmbDistrito;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::select[8]") protected WebElement cmbTipoVia;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::input[1]") protected WebElement txtCentroLaboral;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::input[2]") protected WebElement txtCargo;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::input[3]") protected WebElement txtTiempoServicio;
    @FindBy(xpath = "//h3[contains(text(),'Datos generales')]/following::input[4]") protected WebElement txtDireccion;

    public OrigenFondoPage() {
        PageFactory.initElements(driver,this);
    }
    public void seleccionarOrigenFondo(String origenFondo) {
        wait.until(ExpectedConditions.visibilityOf(cmbOrigenFondo));
        Select select = new Select(cmbOrigenFondo);
        select.selectByVisibleText(origenFondo);
    }
    public void seleccionarTipoTrabajador(String tipoTrabajador) {
        wait.until(ExpectedConditions.visibilityOf(cmbTipoTrabajador));
        Select select = new Select(cmbTipoTrabajador);
        select.selectByVisibleText(tipoTrabajador);
    }
    public void seleccionarTiempo(String tiempo) {
        wait.until(ExpectedConditions.visibilityOf(cmbTiempo));
        Select select = new Select(cmbTiempo);
        select.selectByVisibleText(tiempo);
    }
    public void seleccionarPromedioMensual(String promedioMensual) {
        wait.until(ExpectedConditions.visibilityOf(cmbIngresoPromedioMensual));
        Select select = new Select(cmbIngresoPromedioMensual);
        select.selectByVisibleText(promedioMensual);
    }
    public void seleccionarDepartamento(String departamento) {
        wait.until(ExpectedConditions.visibilityOf(cmbDepartamento));
        Select select = new Select(cmbDepartamento);
        select.selectByVisibleText(departamento);
    }
    public void seleccionarProvinicia(String provinicia) {
        wait.until(ExpectedConditions.visibilityOf(cmbProvincia));
        Select select = new Select(cmbProvincia);
        select.selectByVisibleText(provinicia);
    }
    public void seleccionarDistrito(String distrito) {
        wait.until(ExpectedConditions.visibilityOf(cmbDistrito));
        Select select = new Select(cmbDistrito);
        select.selectByVisibleText(distrito);
    }
    public void seleccionarTipoVia(String tipoVia) {
        wait.until(ExpectedConditions.visibilityOf(cmbTipoVia));
        Select select = new Select(cmbTipoVia);
        select.selectByVisibleText(tipoVia);
    }
    public void ingresarCentroLaboral(String centroLaboral) {
        wait.until(ExpectedConditions.visibilityOf(txtCentroLaboral));
        txtCentroLaboral.sendKeys(centroLaboral);
    }
    public void ingresarCargo(String cargo) {
        wait.until(ExpectedConditions.visibilityOf(txtCargo));
        txtCargo.sendKeys(cargo);
    }
    public void ingresarTiempoServicio(String tiempoServicio) {
        wait.until(ExpectedConditions.visibilityOf(txtTiempoServicio));
        txtTiempoServicio.sendKeys(tiempoServicio);
    }
    public void ingresarDireccion(String direccion) {
        wait.until(ExpectedConditions.visibilityOf(txtDireccion));
        txtDireccion.sendKeys(direccion);
    }
}
