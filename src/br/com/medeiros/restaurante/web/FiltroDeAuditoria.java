package br.com.medeiros.restaurante.web;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.medeiros.restaurante.model.Usuario;

@WebFilter(urlPatterns="/*")
public class FiltroDeAuditoria implements Filter{

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		String uri = req.getRequestURI();
		String user = getUsuario(req, resp);
		
		DateTimeFormatter formatadorComHoras = DateTimeFormatter.ofPattern("dd/MM/yyyy hh:mm:ss");
		LocalDateTime agora = LocalDateTime.now(); 
		
		System.out.println("Usuário " + user + " acessando a URI: " + uri 
				+ " em: " + agora.format(formatadorComHoras));
		
		chain.doFilter(req, resp);
	}

	private String getUsuario(HttpServletRequest req, HttpServletResponse resp) {
		Usuario user = (Usuario) req.getSession().getAttribute("usuarioLogado");
		
		if(user==null) return "<deslogado>";
		return user.getEmail();
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

}
