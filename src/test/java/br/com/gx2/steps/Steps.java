package br.com.gx2.steps;


import com.jagacy.util.JagacyException;

// Import das classes
import br.com.gx2.sessions.Session;
import br.com.gx2.telas.TelaInicial;

//Import do Cucumber
import cucumber.api.PendingException;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;



public class Steps {
	
	Session session;
	TelaInicial telaInicial;
	
	@Before
	public void antes() throws JagacyException {
		session = new Session("Testes");
	}
	
	@Dado("^que estou na tela de login mainframe$")
	public void queEstouNaTelaDeLoginMainframe() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Dado("^o texto \"([^\"]*)\" é exibido na linha \"([^\"]*)\" coluna \"([^\"]*)\"$")
	public void oTextoÉExibidoNaLinhaColuna(String arg1, String arg2, String arg3) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Dado("^eu informar \"([^\"]*)\" na linha \"([^\"]*)\" coluna \"([^\"]*)\"$")
	public void euInformarNaLinhaColuna(String arg1, String arg2, String arg3) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Dado("^senha \"([^\"]*)\" na linha \"([^\"]*)\" coluna \"([^\"]*)\"$")
	public void senhaNaLinhaColuna(String arg1, String arg2, String arg3) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Dado("^teclar enter$")
	public void teclarEnter() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Dado("^estou seja apresentada na tela a informaçãoo de login na linha (\\d+) coluna (\\d+)$")
	public void estouSejaApresentadaNaTelaAInformaçãooDeLoginNaLinhaColuna(int arg1, int arg2) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Então("^deve exibir tela de dados conforme \"([^\"]*)\"$")
	public void deveExibirTelaDeDadosConforme(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Dado("^estou seja apresentada na tela a informação de login na linha (\\d+) coluna (\\d+)$")
	public void estouSejaApresentadaNaTelaAInformaçãoDeLoginNaLinhaColuna(int arg1, int arg2) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Quando("^teclar \"([^\"]*)\"$")
	public void teclar(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Então("^deve exibir mensagem \"([^\"]*)\"$")
	public void deveExibirMensagem(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@After
	public void depois() {

	}

}
