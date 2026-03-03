package pageobjects;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import support.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class FormularioPage extends util {
    private By txtDireccion = By.xpath(
            "//label[contains(text(),'Dirección')]/following::input[1]" + " | " +
                          "//h3[contains(text(),'Datos generales')]/following::input[4]");
    private By cmbTipoTrabajador = By.xpath(
            "//label[contains(text(),'Tipo de trabajador')]/following::select[1]" +
                          "| //h3[contains(text(),'Datos generales')]/following::select[2]");
    private By cmbDepartamento = By.xpath(
            "//label[contains(text(),'Departamento')]/following::select[1]" +
                          "| //h3[contains(text(),'Datos generales')]/following::select[5]");
    private By cmbProvincia = By.xpath(
            "//label[contains(text(),'Provincia')]/following::select[1]" +
                          "| //h3[contains(text(),'Datos generales')]/following::select[6]");
    private By cmbDistrito = By.xpath(
            "//label[contains(text(),'Distrito')]/following::select[1]" +
                          "| //h3[contains(text(),'Datos generales')]/following::select[7]");
    private By cmbTipoVia = By.xpath(
            "//label[contains(text(),'Tipo de vía')]/following::select[1]" +
                          "| //h3[contains(text(),'Datos generales')]/following::select[8]");
    private By txtCentroLabores = By.xpath(
            "//label[contains(text(),'Centro de labores')]/following::input[1]" + " | " +
                          "//h3[contains(text(),'Datos generales')]/following::input[1]");
    @FindBy(xpath = "//input[@placeholder='Ingrese primer nombre']") protected WebElement txtPrimerNombre;
    @FindBy(xpath = "//input[@placeholder='Ingrese segundo nombre']") protected WebElement txtSegundoNombre;
    @FindBy(xpath = "//input[@placeholder='Ingrese primer apellido']") protected WebElement txtPrimerApellido;
    @FindBy(xpath = "//input[@placeholder='Ingrese segundo apellido']") protected WebElement txtSegundoApellido;
    @FindBy(xpath = "//label[contains(text(),'Número de celular')]/following::input[1]") protected WebElement txtCelular;
    @FindBy(xpath = "//label[contains(text(),'Correo electrónico')]/following::input[1]") protected WebElement txtCorreo;
    @FindBy(xpath = "//label[contains(text(),'RUC')]/following::input[1]") protected WebElement txtRuc;
    @FindBy(xpath = "//span[contains(text(),'No tengo segundo nombre')]") protected WebElement chkNoSegundoNombre;
    @FindBy(xpath = "//span[contains(text(),'No tengo segundo apellido')]") protected WebElement chkNoSegundoApellido;
    @FindBy(xpath = "//label[contains(text(),'Nacionalidad')]/following::select[1]") protected WebElement cmbNacionalidad;
    @FindBy(xpath = "//label[contains(text(),'País de residencia')]/following::select[1]") protected WebElement cmbPaisResidencia;
    @FindBy(xpath = "//label[contains(text(),'Sexo')]/following::select[1]") protected WebElement cmbSexo;
    @FindBy(xpath = "//label[contains(text(),'Estado civil')]/following::select[1]") protected WebElement cmbEstadoCivil;
    @FindBy(xpath = "//label[contains(text(),'Profesión')]/following::select[1]") protected WebElement cmbProfesion;
    @FindBy(xpath = "//label[contains(text(),'Cargo')]/following::select[1]") protected WebElement cmbCargo;
    @FindBy(xpath = "//label[contains(text(),'Ingreso promedio mensual')]/following::select[1]") protected WebElement cmbIngresoPromedioMensual;
    @FindBy(xpath = "//label[contains(text(),'Ingreso promedio mensual')]/following::input[1]") protected WebElement txtIngresoPromedioMensual;
    @FindBy(xpath = "//label[contains(text(),'Número de celular')]/following::select[1]") protected WebElement cmbPrefijoCelular;
    @FindBy(xpath = "//label[contains(text(),'Dirección')]/following::input[1]") protected WebElement txtDireccionManual;
    @FindBy(xpath = "//input[@placeholder='Peruana']") protected WebElement txtNacionalidad;
    @FindBy(xpath = "(//input[@type='radio'])[1]") protected WebElement rdUsarDireccionDni;
    @FindBy(xpath = "(//input[@type='radio'])[2]") protected WebElement rdNuevaDireccion;

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
        WebElement campo = wait.until(ExpectedConditions.visibilityOfElementLocated(txtDireccion));
        campo.clear();
        campo.sendKeys(direccion);
    }
    public void ingresarCentroLabores(String centroLabores) {
        WebElement campo = wait.until(ExpectedConditions.visibilityOfElementLocated(txtCentroLabores));
        campo.clear();
        campo.sendKeys(centroLabores);
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
    //public void seleccionarFechaNacimiento(String fecha) {
    //    WebElement campoFecha = driver.findElement(By.xpath("//input[@type='date']"));
    //    String fechaFormateada = convertirFormatoFecha(fecha);
    //    JavascriptExecutor js = (JavascriptExecutor) driver;
    //    js.executeScript("arguments[0].value = arguments[1];", campoFecha, fechaFormateada);
    //}
    public void seleccionarFechaNacimiento(String fecha) {
        WebElement campoFecha = wait.until(ExpectedConditions.elementToBeClickable(By.cssSelector("input[type='date']")));
        campoFecha.click();
        campoFecha.sendKeys(fecha); // <-- usar directamente dd/MM/yyyy
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
        WebElement combo = wait.until(ExpectedConditions.visibilityOfElementLocated(cmbDepartamento));
        Select select = new Select(combo);
        select.selectByVisibleText(departamento);
    }
    public void seleccionarProvincia(String provincia) {
        WebElement combo = wait.until(ExpectedConditions.visibilityOfElementLocated(cmbProvincia));
        Select select = new Select(combo);
        select.selectByVisibleText(provincia);
    }
    public void seleccionarDistrito(String distrito) {
        WebElement combo = wait.until(ExpectedConditions.visibilityOfElementLocated(cmbDistrito));
        Select select = new Select(combo);
        select.selectByVisibleText(distrito);
    }
    public void seleccionarTipoVia(String tipoVia) {
        WebElement combo = wait.until(ExpectedConditions.visibilityOfElementLocated(cmbTipoVia));
        Select select = new Select(combo);
        select.selectByVisibleText(tipoVia);
    }
    public void seleccionarProfesion(String profesion) {
        wait.until(ExpectedConditions.visibilityOf(cmbProfesion));
        Select select = new Select(cmbProfesion);
        select.selectByVisibleText(profesion);
    }
    public void seleccionarTipoTrabajador(String tipoTrabajador) {
        WebElement combo = wait.until(ExpectedConditions.visibilityOfElementLocated(cmbTipoTrabajador));
        Select select = new Select(combo);
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
    public void seleccionarPrefijoCelular(String prefijo) {
        wait.until(ExpectedConditions.visibilityOf(cmbPrefijoCelular));
        Select select = new Select(cmbPrefijoCelular);
        select.selectByVisibleText(prefijo);
    }
    public void ingresarNacionalidad(String nacionalidad) {
        wait.until(ExpectedConditions.visibilityOf(txtNacionalidad));
        txtNacionalidad.sendKeys(nacionalidad);
    }
    public void seleccionarUsarDireccionDni() {
        wait.until(ExpectedConditions.visibilityOf(rdUsarDireccionDni));
        rdUsarDireccionDni.click();
    }
    public void seleccionarNuevaDireccion() {
        wait.until(ExpectedConditions.visibilityOf(rdNuevaDireccion));
        rdNuevaDireccion.click();
    }
    public void ingresarDireccionManual(String direccion) {
        wait.until(ExpectedConditions.visibilityOf(txtDireccionManual));
        txtDireccionManual.sendKeys(direccion);
    }
    public void ingresarIngresoPromedioMensual(String promedio) {
        wait.until(ExpectedConditions.visibilityOf(txtIngresoPromedioMensual));
        txtIngresoPromedioMensual.sendKeys(promedio);
    }
    private String convertirFormatoFecha(String fecha) {
        DateTimeFormatter entrada = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        DateTimeFormatter salida = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate fechaParseada = LocalDate.parse(fecha, entrada);
        return fechaParseada.format(salida);
    }
}
