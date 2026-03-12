package pageobjects;

import org.openqa.selenium.support.PageFactory;
import support.util;

public class ConfirmaSolicitudPage extends util {

    public ConfirmaSolicitudPage() {
        PageFactory.initElements(driver,this);
    }
}