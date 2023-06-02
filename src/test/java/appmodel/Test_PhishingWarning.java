package appmodel;

import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.Assert;
import org.junit.jupiter.api.*;

import com.hp.lft.report.Reporter;
import com.hp.lft.sdk.*;
import com.hp.lft.sdk.web.*;
import com.hp.lft.verifications.*;

import de.commerzbank.ApplicationModel;
import de.commerzbank.ApplicationModel.*;
import de.commerzbank.ApplicationModel.Commerzbank_Start_Page.Login_Link;
import unittesting.*;

@ExtendWith(UnitTestClassBase.class)
public class Test_PhishingWarning {

    Browser browser;
	
	public Test_PhishingWarning() {
        //Change this constructor to private if you supply your own public constructor
    }

    @BeforeAll
    public static void setUpBeforeClass() throws Exception {
    }

    @AfterAll
    public static void tearDownAfterClass() throws Exception {
    }

    @BeforeEach
    public void setUp() throws Exception {

		browser = BrowserFactory.launch(BrowserType.EDGE_CHROMIUM);
		browser.navigate("https://www.commerzbank.de/");
    }

    @AfterEach
    public void tearDown() throws Exception {
    	browser.closeAllTabs();
    	
    }

    @Test
    public void test_phishingWarningOnLoginPage() throws GeneralLeanFtException {
	    ApplicationModel commerzbankOnlineBanking = new ApplicationModel(browser);
	    commerzbankOnlineBanking.Commerzbank_Start_Page().Login_Link().click();
	    commerzbankOnlineBanking.Commerzbank_Login_Page().Login_UserId_Edit().setValue("1234567");
	    commerzbankOnlineBanking.Commerzbank_Login_Page().Login_UserPin_Edit().setSecure("23456");
	    
	    commerzbankOnlineBanking.Commerzbank_Login_Page().Login_PishingLink_Edit().click();
	    
	    String phishingWarning = commerzbankOnlineBanking.Commerzbank_Phishing_Warning_Page().PhishingWarning_Header().getDisplayName();
	    commerzbankOnlineBanking.Commerzbank_Start_Page().waitUntilExists();
	    commerzbankOnlineBanking.Commerzbank_Start_Page().Login_Link().waitUntilVisible(1000);
	    
	    
	    Assert.assertTrue(
	    		Verify.areEqual("Warnung vor Telefonbetrug", phishingWarning)
	    		);
	    
	}

}