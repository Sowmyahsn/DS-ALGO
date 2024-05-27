package runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

	@CucumberOptions(features="src/test/resources/features",
	glue="dsalgo_stepdefinition",
	monochrome=true,
	plugin= {"html:target/cucumber.html",
	"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
	publish=true)
	
	public class Test_Runner extends AbstractTestNGCucumberTests {

	}
