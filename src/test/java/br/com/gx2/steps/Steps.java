package br.com.gx2.steps;

import org.junit.Assert;

// Jagacy
import com.jagacy.Key;
import com.jagacy.util.JagacyException;

// Import das classes
import br.com.gx2.func.Compara;
import br.com.gx2.sessions.Session;
import br.com.gx2.telas.TelaGenerica;
// Import do Cucumber
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class Steps {

	Session session;
	Scenario scenario;
	Compara compara = new Compara();
	TelaGenerica tela;

	@Before
	public void antes(Scenario s) throws JagacyException {
		this.scenario = s;
	}

	@Dado("^que estou na tela de login mainframe$")
	public void queEstouNaTelaDeLoginMainframe() throws Throwable {
		session = new Session("Teste");
		session.open();
	}

	@Dado("^o texto \"([^\"]*)\" é exibido na linha (\\d+) coluna (\\d+)$")
	public void oTextoÉExibidoNaLinhaColuna(String cont, int linha, int col) throws Throwable {
		tela = new TelaGenerica(session, linha, col, cont);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^eu informar usuário \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void euInformarUsuárioNaLinhaColuna(String cont, int linha, int col) throws Throwable {
		tela.setcampoEntry(cont, linha, col);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^senha \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void senhaNaLinhaColuna(String cont, int linha, int col) throws Throwable {
		tela.setcampoEntry(cont, linha, col);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^teclar enter$")
	public void teclarEnter() throws Throwable {
		session.writeKey(Key.ENTER);
	}

	@Dado("^será exibida tela com a informação \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void seráExibidaTelaComAInformaçãoNaLinhaColuna(String cont, int linha, int col) throws Throwable {
		tela = new TelaGenerica(session, linha, col, cont);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^eu informar \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void euInformarNaLinhaColuna(String cont, int linha, int col) throws Throwable {
		tela.setcampoEntry(cont, linha, col);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^seja apresentada na tela a informação de login do sistema de gestão \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void sejaApresentadaNaTelaAInformaçãoDeLoginDoSistemaDeGestãoNaLinhaColuna(String cont, int linha, int col)
			throws Throwable {
		tela = new TelaGenerica(session, linha, col, cont);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Então("^deve exibir tela de dados conforme \"([^\"]*)\"$")
	public void deveExibirTelaDeDadosConforme(String file) throws Throwable {
		String[] contArq = compara.readFile(file);
		String[] tela = session.readScreen();
		Assert.assertArrayEquals(contArq, tela);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Então("^o texto \"([^\"]*)\" deve ser exibido na linha (\\d+) coluna (\\d+)$")
	public void oTextoDeveSerExibidoNaLinhaColuna(String cont, int linha, int col) throws Throwable {
		String teste = session.readPosition(linha, col, cont.length());
		Assert.assertEquals(cont, teste);
		scenario.embed(session.getScreenshot(), "image/png");
	}

	@Dado("^teclar PF2$")
	public void teclarF2() throws Throwable {
		session.writeKey(Key.PA1);
		session.waitForUnlock(10000);
		session.writeKey(Key.PF2);
	}
	
	@Quando("^teclar PF3$")
	public void teclarF3() throws Throwable {
		session.writeKey(Key.PA1);
		session.waitForUnlock(10000);
		session.writeKey(Key.PF3);
	}
	
	@Quando("^teclar PF5$")
	public void teclarF5() throws Throwable {
		session.writeKey(Key.PA1);
		session.waitForUnlock(10000);
		session.writeKey(Key.PF5);
	}
	
	@Dado("^aguardar tela carregar$")
	public void aguardarTelaCarregar() throws Throwable {
		session.waitForUnlock(10000);
	}

	@Então("^deve exibir \"([^\"]*)\" na linha (\\d+) coluna (\\d+)$")
	public void deveExibirNaLinhaColuna(String alerta, int linha, int col) throws Throwable {
		String alertaTela = session.readPosition(linha, col, alerta.length());
		scenario.embed(session.getScreenshot(), "image/png");
		Assert.assertEquals(alerta, alertaTela);
		
	}
	
	@Então("^linha (\\d+) coluna (\\d+) am branco$")
	public void linhaColunaAmBranco(int linha, int col) throws Throwable {
		String linhaBranco = session.readPosition(linha, col, 52).trim();
		Assert.assertEquals("", linhaBranco);
	}

	@After
	public void depois() throws JagacyException {
		session.close();
	}

}
