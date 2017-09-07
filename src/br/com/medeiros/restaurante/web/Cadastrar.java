package br.com.medeiros.restaurante.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.medeiros.restaurante.dao.ConnectionPool;
import br.com.medeiros.restaurante.dao.UsuarioDAO;
import br.com.medeiros.restaurante.model.Usuario;
import br.com.medeiros.restaurante.model.ValidaCpf;

@WebServlet(urlPatterns = "/realizar-cadastro")
public class Cadastrar extends HttpServlet {

	/*
	 * @Override public String executa(HttpServletRequest req,
	 * HttpServletResponse resp) {
	 * 
	 * return ""; } Nesse caso, n�o irei chamar uma nova p�gina
	 */

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String cpf = req.getParameter("cpf");
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		String telefone = req.getParameter("telefone");
		PrintWriter escritor = resp.getWriter();

		if (!ValidaCpf.isCPF(cpf)) {
			escritor.println("<!DOCTYPE html><html><body> Esse n�mero de CPF � inv�lido! </body></html");
		} else {
			try (Connection con = new ConnectionPool().getConnection()) {
				UsuarioDAO userDao = new UsuarioDAO(con);

				if (userDao.buscaPorCpf(cpf)) {
					escritor.println("<!DOCTYPE html><html><body> Esse usu�rio j� est� cadastrado no sistema </body></html");
				} else if (userDao.buscaPorEmail(email)) {
					escritor.println("<!DOCTYPE html><html><body> Esse e-mail j� est� sendo usado por outro usu�rio </body></html");
				} else {
					Usuario user = new Usuario(cpf, nome, email, senha,
							telefone);
					userDao.inserir(user);
					escritor.println("<!DOCTYPE html><html><body> Usu�rio "
							+ user.getNome()
							+ " cadastrado com sucesso</body></html");
				}
			} catch (SQLException e) {
				System.out.println("Conex�o com o banco falhou!");
				e.printStackTrace();
			}
		}
	}

}
