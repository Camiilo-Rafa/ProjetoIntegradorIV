package br.senac.conexaobd.entidades;

import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author Douglas
 */
@Getter
@Setter

public class Produto {

    private int codigo;
    private String nome;
    private int quantidade;
    private float avaliacao;
    private double valor;
    private String ativo;
    private String descricao;
    private String imgReferencia;

    public boolean isAtivo() {
        return "Ativo".equalsIgnoreCase(this.getAtivo());
    }

    public boolean isNotAtivo() {
        return "Não Ativo".equalsIgnoreCase(this.getAtivo());
    }

}
