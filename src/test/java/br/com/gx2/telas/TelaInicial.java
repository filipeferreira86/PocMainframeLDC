package br.com.gx2.telas;

import com.jagacy.Key;
import com.jagacy.util.JagacyException;

import br.com.gx2.fields.EntryField;
import br.com.gx2.fields.LabelField;
import br.com.gx2.sessions.Session;



public class TelaInicial {

	private Session session;

	// Campos na tela:
	private LabelField campo1 = new LabelField(17, 25, "Usuario . . . . :");

	private EntryField login;

	private EntryField senha = new EntryField(18, 44);

	public TelaInicial(Session s) throws JagacyException {
		this.session = s;
		if (!session.waitForTextLabel(campo1)) {
			System.out.println("Não é a tela de Login!!!");
		}
	}

	public void setLogin(String l, int linha, int col) throws JagacyException {
		login = new EntryField(linha, col);
		session.setEntryFieldValue(login, l);
	}

	public void setSenha(String s) throws JagacyException {
		session.setEntryFieldValue(senha, s);
	}
	
	public void sendKey(Key tecla) throws JagacyException {
		session.writeKey(tecla);
	}

}
