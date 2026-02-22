package pageobjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import support.util;

public class FormularioPage extends util {
    @FindBy(xpath = "//input[@placeholder='Ingrese primer nombre']")
    protected WebElement txtPrimerNombre;
    @FindBy(xpath = "//input[@placeholder='Ingrese segundo nombre']")
    protected WebElement txtSegundoNombre;
    @FindBy(xpath = "//input[@placeholder='Ingrese primer apellido']")
    protected WebElement txtPrimerApellido;
    @FindBy(xpath = "//input[@placeholder='Ingrese segundo apellido']")
    protected WebElement txtSegundoApellido;
    @FindBy(xpath = "//input[@placeholder='Ej: Av. Larco 1234, Dpto. 501']")
    protected WebElement txtDireccion;
    @FindBy(xpath = "//input[@type='tel']")
    protected WebElement txtCelular;
    @FindBy(xpath = "//input[@type='email']")
    protected WebElement txtCorreo;
    @FindBy(xpath = "//input[@placeholder='20123456789']")
    protected WebElement txtRuc;

    @FindBy(xpath = "//span[contains(text(),'No tengo segundo nombre')]")
    protected WebElement chkNoSegundoNombre;
    @FindBy(xpath = "//span[contains(text(),'No tengo segundo apellido')]")
    protected WebElement chkNoSegundoApellido;

    @FindBy(xpath = "//label[contains(text(),'Nacionalidad')]/following::select[1]")
    protected WebElement cmbNacionalidad;
    @FindBy(xpath = "//label[contains(text(),'País de residencia')]/following::select[1]")
    protected WebElement cmbPaisResidencia;
    @FindBy(xpath = "//label[contains(text(),'Sexo')]/following::select[1]")
    protected WebElement cmbSexo;
    @FindBy(xpath = "//label[contains(text(),'Estado civil')]/following::select[1]")
    protected WebElement cmbEstadoCivil;
    @FindBy(xpath = "//label[contains(text(),'Departamento')]/following::select[1]")
    protected WebElement cmbDepartamento;
    @FindBy(xpath = "//label[contains(text(),'Provincia')]/following::select[1]")
    protected WebElement cmbProvincia;
    @FindBy(xpath = "//label[contains(text(),'Distrito')]/following::select[1]")
    protected WebElement cmbDistrito;
    @FindBy(xpath = "//label[contains(text(),'Tipo de vía')]/following::select[1]")
    protected WebElement cmbTipoVia;
    @FindBy(xpath = "//label[contains(text(),'Profesión')]/following::select[1]")
    protected WebElement cmbProfesion;
    @FindBy(xpath = "//label[contains(text(),'Tipo de trabajador')]/following::select[1]")
    protected WebElement cmbTipoTrabajador;
    @FindBy(xpath = "//label[contains(text(),'Cargo')]/following::select[1]")
    protected WebElement cmbCargo;
    @FindBy(xpath = "//label[contains(text(),'Ingreso promedio mensual')]/following::select[1]")
    protected WebElement cmbIngresoPromedioMensual;

    public FormularioPage() {
        PageFactory.initElements(driver,this);
    }

    public void ingresarPrimerNombre(String primerNombre) {
        wait.until(ExpectedConditions.visibilityOf(txtPrimerNombre));
        txtPrimerNombre.sendKeys(primerNombre);
    }
    public void ingresarSegundoNombre(String segundoNombre) {
        wait.until(ExpectedConditions.visibilityOf(txtSegundoNombre));
        txtSegundoNombre.sendKeys(segundoNombre);
    }
    public void ingresarPrimerApellido(String primerApellido) {
        wait.until(ExpectedConditions.visibilityOf(txtPrimerApellido));
        txtPrimerApellido.sendKeys(primerApellido);
    }
    public void ingresarSegundoApellido(String segundoApellido) {
        wait.until(ExpectedConditions.visibilityOf(txtSegundoApellido));
        txtSegundoApellido.sendKeys(segundoApellido);
    }
    public void ingresarDireccion(String direccion) {
        wait.until(ExpectedConditions.visibilityOf(txtDireccion));
        txtDireccion.sendKeys(direccion);
    }
    public void ingresarCelular(String celular) {
        wait.until(ExpectedConditions.visibilityOf(txtCelular));
        txtCelular.sendKeys(celular);
    }
    public void ingresarCorreo(String correo) {
        wait.until(ExpectedConditions.visibilityOf(txtCorreo));
        txtCorreo.sendKeys(correo);
    }
    public void ingresarRuc(String ruc) {
        wait.until(ExpectedConditions.visibilityOf(txtRuc));
        txtRuc.sendKeys(ruc);
    }

    public void seleccionarNacionalidad(String nacionalidad) {
        wait.until(ExpectedConditions.visibilityOf(cmbNacionalidad));
        Select select = new Select(cmbNacionalidad);
        select.selectByVisibleText(nacionalidad);
    }
    public void seleccionarPaisResidencia(String residencia) {
        wait.until(ExpectedConditions.visibilityOf(cmbPaisResidencia));
        Select select = new Select(cmbPaisResidencia);
        select.selectByVisibleText(residencia);
    }
    public void seleccionarSexo(String sexo) {
        wait.until(ExpectedConditions.visibilityOf(cmbSexo));
        Select select = new Select(cmbSexo);
        select.selectByVisibleText(sexo);
    }
    public void seleccionarEstadoCivil(String estadoCivil) {
        wait.until(ExpectedConditions.visibilityOf(cmbEstadoCivil));
        Select select = new Select(cmbEstadoCivil);
        select.selectByVisibleText(estadoCivil);
    }
    public void seleccionarDepartamento(String departamento) {
        wait.until(ExpectedConditions.visibilityOf(cmbDepartamento));
        Select select = new Select(cmbDepartamento);
        select.selectByVisibleText(departamento);
    }
    public void seleccionarProvincia(String provincia) {
        wait.until(ExpectedConditions.visibilityOf(cmbProvincia));
        Select select = new Select(cmbProvincia);
        select.selectByVisibleText(provincia);
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
    public void seleccionarProfesion(String profesion) {
        wait.until(ExpectedConditions.visibilityOf(cmbProfesion));
        Select select = new Select(cmbProfesion);
        select.selectByVisibleText(profesion);
    }
    public void seleccionarTipoTrabajador(String tipoTrabajador) {
        wait.until(ExpectedConditions.visibilityOf(cmbTipoTrabajador));
        Select select = new Select(cmbTipoTrabajador);
        select.selectByVisibleText(tipoTrabajador);
    }
    public void seleccionarCargo(String cargo) {
        wait.until(ExpectedConditions.visibilityOf(cmbCargo));
        Select select = new Select(cmbCargo);
        select.selectByVisibleText(cargo);
    }
    public void seleccionarIngresoPromedioMensual(String ingreso) {
        wait.until(ExpectedConditions.visibilityOf(cmbIngresoPromedioMensual));
        Select select = new Select(cmbIngresoPromedioMensual);
        select.selectByVisibleText(ingreso);
    }
}
