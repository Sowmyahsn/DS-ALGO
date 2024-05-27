package dsalgo_webdriver_manager;

import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.UnexpectedAlertBehaviour;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.safari.SafariDriver;
import org.openqa.selenium.safari.SafariOptions;
import dsalgo_utilities.LoggerLoad;


public class Webdriver_Manager {

	private static WebDriver driver;
	
	public static WebDriver initializeDriver(String browser) {
		
		ChromeOptions chromeOptions = new ChromeOptions();	
		
		switch (browser.toLowerCase()) {
		
		case "chrome":
			
			LoggerLoad.info("Launching chrome : "+browser);		
			chromeOptions.setPageLoadStrategy(PageLoadStrategy.NORMAL);	
			chromeOptions.setAcceptInsecureCerts(false);
			chromeOptions.setUnhandledPromptBehaviour(UnexpectedAlertBehaviour.DISMISS);
			chromeOptions.addArguments("start-maximized");
			driver = new ChromeDriver(chromeOptions);
			break;
			
		case "firefox":
			
			LoggerLoad.info("Launching firefox : "+browser);	
			FirefoxOptions firefoxOptions = new FirefoxOptions();
			firefoxOptions.setPageLoadStrategy(PageLoadStrategy.NORMAL);	
			firefoxOptions.setAcceptInsecureCerts(true);
			firefoxOptions.setUnhandledPromptBehaviour(UnexpectedAlertBehaviour.DISMISS);
			firefoxOptions.addArguments("start-maximized");
			driver = new FirefoxDriver(firefoxOptions);		
			break;
		
		case "edge":
			
			LoggerLoad.info("Launching edge : "+browser);	
			EdgeOptions edgeOptions = new EdgeOptions();
			edgeOptions.setPageLoadStrategy(PageLoadStrategy.NORMAL);	
			edgeOptions.setAcceptInsecureCerts(true);
			edgeOptions.setUnhandledPromptBehaviour(UnexpectedAlertBehaviour.DISMISS);
			edgeOptions.addArguments("start-maximized");
			driver = new EdgeDriver(edgeOptions);		
			break;
		
		case "safari":
			
			LoggerLoad.info("Launching safari : "+browser);	
			SafariOptions safariOptions = new SafariOptions();
			safariOptions.setPageLoadStrategy(PageLoadStrategy.NORMAL);	
			safariOptions.setAcceptInsecureCerts(true);
			safariOptions.setUnhandledPromptBehaviour(UnexpectedAlertBehaviour.DISMISS);
			driver = new SafariDriver(safariOptions);		
			break;		
			
		case "headless":
			
			LoggerLoad.info("Launching chrome in headless mode : "+browser);	
			chromeOptions.setPageLoadStrategy(PageLoadStrategy.NORMAL);	
			chromeOptions.setAcceptInsecureCerts(true);
			chromeOptions.addArguments("--headless");
			chromeOptions.addArguments("start-maximized");
			chromeOptions.setUnhandledPromptBehaviour(UnexpectedAlertBehaviour.DISMISS);
			driver = new ChromeDriver(chromeOptions);	
			break;
		
		default:
			
			LoggerLoad.warn("default switch case is getting executed: "+browser);
			driver = new ChromeDriver();
			break;
			
		}
		
		return getDriver();
	}

	public static WebDriver getDriver() {
		return driver;
	}
	
}
