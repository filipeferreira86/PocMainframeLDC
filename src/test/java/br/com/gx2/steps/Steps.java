package br.com.gx2.steps;


import org.junit.Assert;

import com.jagacy.util.JagacyException;

import br.com.gx2.func.Compara;
// Import das classes
import br.com.gx2.sessions.Session;
import br.com.gx2.telas.TelaInicial;

//Import do Cucumber
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;



public class Steps {
	
	Session session;
	TelaInicial telaInicial;
	Scenario scenario;
	Compara compara = new Compara();
	
	@Before
	public void antes(Scenario s) throws JagacyException {
		this.scenario = s;
	}
	
	@Dado("^que estou na tela de login mainframe$")
	public void queEstouNaTelaDeLoginMainframe() throws Throwable {
		session = new Session("Testes");
        session.open();
        telaInicial = new TelaInicial(session);
        scenario.embed(session.getScreenshot(), "image/png");
	}
	
	@Quando("^eu verificar \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void euVerificarNaLinhaColuna(String login, int linha, int col) throws Throwable {
		telaInicial.setLogin(login, linha, col);
        scenario.embed(session.getScreenshot(), "image/png");
	}
	
	@Então("^deve ser exibida tela conforme \"([^\"]*)\"$")
	public void deveSerExibidaTelaConforme(String filename) throws Throwable {
		String[] telaNoSimulador = session.readScreen();
		String[] telaNoPrt = compara.readFile(filename);
        scenario.embed(session.getScreenshot(), "image/png");
		Assert.assertArrayEquals(telaNoPrt, telaNoSimulador);
	}
	
	@After
	public void depois() throws JagacyException {
		session.close();
	}

}
