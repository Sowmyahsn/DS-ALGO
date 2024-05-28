package runner;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

	@CucumberOptions(
			plugin = {"pretty", "html:target/cucumber.html", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"}, //reporting purpose
			
			monochrome = true ,  // for console output clarity
			
			publish= true ,
			
			tags = "@signin", // tags from feature file
			
			features = {"src/test/resources/features"}, // location of feature files
			
			glue= {"dsalgo_stepdefinition", "dsalgo_hooks"} ) // location of step definition files
	

public class Test_Runner extends AbstractTestNGCucumberTests{
	
		
}
