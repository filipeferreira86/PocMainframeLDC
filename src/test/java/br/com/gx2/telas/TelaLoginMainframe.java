package br.com.gx2.telas;

import com.jagacy.Key;
import com.jagacy.util.JagacyException;

import br.com.gx2.fields.EntryField;
import br.com.gx2.fields.LabelField;
import br.com.gx2.sessions.Session;



public class TelaLoginMainframe {

	private Session session;

	// Campos na tela:
	private LabelField campo1;

	private EntryField campoEntry;

	public TelaLoginMainframe(Session s, int linha, int col, String cont) throws JagacyException {
		this.session = s;
		campo1 = new LabelField(linha, col, cont);
		if (!session.waitForTextLabel(campo1)) {
			System.out.println("Não é a tela de Login!!!");
		}
	}

	public void setcampoEntry(String l, int linha, int col) throws JagacyException {
		campoEntry = new EntryField(linha, col);
		session.setEntryFieldValue(campoEntry, l);
	}
	
	public void sendKey(Key tecla) throws JagacyException {
		session.writeKey(tecla);
	}

}
