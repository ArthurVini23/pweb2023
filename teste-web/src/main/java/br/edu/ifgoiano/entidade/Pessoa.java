package br.edu.ifgoiano.entidade;

public class Pessoa {

	private Float altura;

	public float getAltura() {
		if(altura == null) {
			return 1.97f;
		} else {
			return altura;
		}
	}

	public void setAltura(float altura) {
		this.altura = altura;
	}
}
