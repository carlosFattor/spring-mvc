package br.com.casacodigo.loja.validations;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.casacodigo.loja.models.Produto;

public class ProdutoValidation implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Produto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object prod, Errors erros) {
		ValidationUtils.rejectIfEmpty(erros, "nome", "field.required");
		ValidationUtils.rejectIfEmpty(erros, "descricao", "field.required");
		
		if(((Produto)prod).getnPaginas() <= 0){
			erros.rejectValue("nPaginas", "field.required");
		}
		
	}
	
}
