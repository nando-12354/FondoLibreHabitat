package pageobjects;

import definitions.hooks;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import support.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class capturaWordPage extends util {

    public static String capturarScreenshot(String nombreArchivo) {
        String carpeta = "screenshots";
        String ruta = carpeta + "/" + nombreArchivo + ".png";

        File directorio = new File(carpeta);
        if (!directorio.exists()) {
            directorio.mkdirs();
        }

        File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        try {
            Files.copy(src.toPath(), Paths.get(ruta));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ruta;
    }

    public static void registrarPasoConCaptura(String descripcion) {
        try {
            String nombreImagen = "img_" + System.currentTimeMillis();
            String rutaImagen = capturarScreenshot(nombreImagen);
            hooks.word.agregarPaso(descripcion);
            hooks.word.agregarImagen(rutaImagen);
        } catch (Exception e) {
            e.printStackTrace();
            hooks.escenarioActual.log("Error al registrar paso con Captura: " + e.getMessage());
        }
    }
}
