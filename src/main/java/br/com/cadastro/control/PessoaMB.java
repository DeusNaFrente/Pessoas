package br.com.cadastro.control;

import br.com.cadastro.dao.PessoaDao;
import br.com.cadastro.model.Endereco;
import br.com.cadastro.model.Pessoa;
import java.io.Serializable;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import org.primefaces.PrimeFaces;

@ManagedBean(name = "pessoaMB")
@ViewScoped
public class PessoaMB implements Serializable {

    private List<Pessoa> pessoas;
    private Pessoa pessoa = new Pessoa();
    private int etapa = 0;

    private Endereco endereco;

    public int getEtapa() {
        return etapa;
    }

    public void setEtapa(int etapa) {
        this.etapa = etapa;
    }

    public List<Pessoa> getPessoas() {
        if (pessoas == null) {
            refresh();
        }
        return pessoas;
    }

    public void setPessoas(List<Pessoa> pessoas) {
        this.pessoas = pessoas;
    }

    public void refresh() {
        setPessoas(new PessoaDao().getAll(Pessoa.class));
    }

    public Pessoa getPessoa() {
        return pessoa;
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public void novo() {
        setPessoa(new Pessoa());
        etapa = 1;
    }

    public void salvar() {
        if (getPessoa() == null) {
            return;
        }
        if (getPessoa().getNome() == null || "".equals(getPessoa().getNome().trim())) {
            PrimeFaces.current().dialog().showMessageDynamic(new FacesMessage(FacesMessage.SEVERITY_INFO, "Dados inválidos!", "O campo nome é obrigatório"));
            return;
        }

        // Configurar a referência bidirecional
        if (getPessoa().getEndereco() != null) {
            getPessoa().getEndereco().setPessoa(getPessoa());
        }

        new PessoaDao().save(getPessoa());
        refresh();
        setEtapa(0);
        setPessoa(new Pessoa());
    }

    public void editar() {
        setEtapa(1);
    }

    public void excluir() {
        if (getPessoa() == null) {
            return;
        }
        if (getPessoa().getId() == 0) {
            return;
        }
        new PessoaDao().delete(Pessoa.class, getPessoa().getId());
        refresh();
        setEtapa(0);
        setPessoa(new Pessoa());
    }

}
