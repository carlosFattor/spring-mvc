package br.com.casacodigo.loja.models;


import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Produto {

	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String nome;
	
	private String descricao;
	
	private Integer nPaginas;
	
	@DateTimeFormat
	private Calendar lancamento;
	
	
	@ElementCollection
	private List<Preco> precos = new ArrayList<>();
	
	private String resumoPath;

	public Produto() {
		super();
	}
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Integer getnPaginas() {
		return nPaginas;
	}
	public void setnPaginas(Integer nPaginas) {
		this.nPaginas = nPaginas;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<Preco> getPrecos() {
		return precos;
	}
	public void setPrecos(List<Preco> precos) {
		this.precos = precos;
	}
	public Calendar getLancamento() {
		return lancamento;
	}
	public void setLancamento(Calendar lancamento) {
		this.lancamento = lancamento;
	}
	public String getResumoPath() {
		return resumoPath;
	}
	public void setResumoPath(String resumoPath) {
		this.resumoPath = resumoPath;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Produto other = (Produto) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Produto [id=" + id + ", nome=" + nome + ", descricao=" + descricao + ", nPaginas=" + nPaginas
				+ ", precos=" + precos + "]";
	}
	public BigDecimal precoPara(TipoPreco tipoPreco) {
		return precos.stream().filter(preco -> preco.getTipo().equals(tipoPreco))
			.findFirst().get().getValor();
		
	}
}
