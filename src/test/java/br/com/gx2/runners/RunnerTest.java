package br.com.gx2.runners;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		snippets = SnippetType.CAMELCASE, 
		plugin = {"pretty", 
				"html:target/cucumber-html-report",
				"json:target/cucumber.json", 
				"junit:target/cucumber.xml",
				"rerun:target/rerun.txt"}, 
		features = {"src/test/resources/features/login.feature",
				"src/test/resources/features/manutencaoUsuario.feature"}, 
		glue = "br.com.gx2.steps",
		tags = "@exec"
		)

public class RunnerTest {

    @BeforeClass
    public static void setUpSuite() {
        System.setProperty("jagacy.properties.dir",
                "./src/test/resources");
        System.setProperty("Teste.window", "true");
    }
}
