package br.com.hellodev.enums;

public enum Categorias {
	
	BACKEND("Backend"), 
	FRONTEND("Frontend"), 
	MOBILE("Mobile"), 
	INFRAESTRUTURA("Infraestrutura");
	
	private String descricao;
	
	private Categorias(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
}
