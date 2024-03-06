package br.com.cadastro.control;

import br.com.cadastro.dao.UsuarioDao;
import br.com.cadastro.model.Usuario;
import java.io.Serializable;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.primefaces.PrimeFaces;

@ManagedBean(name = "loginMB")
@SessionScoped
public class LoginMB implements Serializable {

    private Usuario usuario = new Usuario();
    private String login;
    private String senha;
    private boolean logado;

    public String login() {
        HttpSession sessao = ((HttpServletRequest) FacesContext.getCurrentInstance().getExternalContext().getRequest()).getSession(true);
        usuario = new UsuarioDao().getUsuario(login);

        if (usuario != null && senha.equals(usuario.getSenha())) {
            logado = true;
            sessao.setAttribute("logado", true);
            sessao.setAttribute("user", usuario);
            return "/sistema/principal";
        } else {
            logado = false;
            PrimeFaces.current().dialog().showMessageDynamic(new FacesMessage(FacesMessage.SEVERITY_INFO, "Usuário ou senha inválido!", "Usuário ou senha inválido"));
            return "";
        }
    }

//    public String logout(){
//        usuario=new Usuario();
//        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
//        return "/login";
//    }
    public String logout() {
        usuario = new Usuario();
        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
        return "/login?faces-redirect=true";
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public boolean isLogado() {
        return logado;
    }

    public void setLogado(boolean logado) {
        this.logado = logado;
    }

}
