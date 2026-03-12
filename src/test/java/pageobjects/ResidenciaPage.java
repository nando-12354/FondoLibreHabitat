package pageobjects;

import org.openqa.selenium.support.PageFactory;
import support.util;

public class ResidenciaPage extends util {

    public ResidenciaPage() {
        PageFactory.initElements(driver,this);
    }
}
