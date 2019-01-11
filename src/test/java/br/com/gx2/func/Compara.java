package br.com.gx2.func;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

public class Compara {
	
	public String[] readFile(String filename) {
        List<String> records = new ArrayList<String>();
        try {
            BufferedReader reader = new BufferedReader(new FileReader(filename));
            String line;
            while ((line = reader.readLine()) != null) {
                records.add(line);
            }
            reader.close();
            String[] linhas = new String[records.size()];
            int i = 0;
            for(String linha : records) {
            	linhas[i] = linha;
                i++;
            }
            return linhas;
            
        } catch (Exception e) {
            System.err.format("Erro na leitura '%s'.", filename);
            e.printStackTrace();
            return null;
        }
    }

}
