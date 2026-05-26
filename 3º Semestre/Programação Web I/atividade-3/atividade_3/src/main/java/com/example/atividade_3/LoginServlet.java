package com.example.atividade_3;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        
        String usuarioDigitado = request.getParameter("username");
        String senhaDigitada = request.getParameter("password");

        
        String usuarioCorreto = "admin";
        String senhaCorreta = "admin123";

        if (usuarioCorreto.equals(usuarioDigitado) && senhaCorreta.equals(senhaDigitada)) {
            
            request.setAttribute("usuario", usuarioDigitado);
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        } else {
            
            request.setAttribute("errorMessage", "Usuário ou senha incorretos!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}    

