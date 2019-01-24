package br.com.gx2.steps;

import org.junit.Assert;

import com.jagacy.Key;
import com.jagacy.util.JagacyException;

import br.com.gx2.func.Compara;
// Import das classes
import br.com.gx2.sessions.Session;
import br.com.gx2.telas.TelaInicial;
import cucumber.api.PendingException;
//Import do Cucumber
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;

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
	}

	@Dado("^o texto \"([^\"]*)\" é exibido na linha (\\d+) coluna (\\d+)$")
	public void oTextoÉExibidoNaLinhaColuna(String cont, int linha, int col) throws Throwable {
        telaInicial = new TelaInicial(session, linha, col, cont);
        scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^eu informar \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void euInformarNaLinhaColuna(String cont, int linha, int col) throws Throwable {
		telaInicial.setcampoEntry(cont, linha, col);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^senha \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void senhaNaLinhaColuna(String cont, int linha, int col) throws Throwable {
		telaInicial.setcampoEntry(cont, linha, col);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^teclar enter$")
	public void teclarEnter() throws Throwable {
		session.writeKey(Key.ENTER);
	}

	@Então("^deve exibir tela de dados conforme \"([^\"]*)\"$")
	public void deveExibirTelaDeDadosConforme(String filename) throws Throwable {
//		String[] telaNoSimulador = session.readScreen();
//		String[] telaNoPrt = compara.readFile(filename);
//      scenario.embed(session.getScreenshot(), "image/png");
//		Assert.assertArrayEquals(telaNoPrt, telaNoSimulador);
	}

	@Dado("^estou seja apresentada na tela a informação de login \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void estouSejaApresentadaNaTelaAInformaçãoDeLoginNaLinhaColuna(String arg1, int arg2, int arg3) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Então("^deve exibir mensagem \"([^\"]*)\"$")
	public void deveExibirMensagem(String arg1) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@After
	public void depois() throws JagacyException {
		session.close();
	}

}
