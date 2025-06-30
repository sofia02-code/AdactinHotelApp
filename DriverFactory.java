package com.factory;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;

public class DriverFactory
{
	public static WebDriver driver;
	
	public WebDriver initBrowsers(String browsername)
	{ 
				
		switch(browsername.toLowerCase())
		{
		
		case "chrome":
			driver = new ChromeDriver();
			break;
			
		case "firefox":
			driver = new FirefoxDriver();
			break;
			
		case "edge":
			driver = new EdgeDriver();
			break;	
		
		case "safari":
			driver = new SafariDriver();
			break;	
			
		default:
			System.out.println("Doesn't match so enter another browser name");
			
		}
		
		return driver;
	}

	
	

}
