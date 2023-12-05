package com.cac.pensadores.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name="oradores", urlPatterns = {"/oradores"})
public class OradoresController extends HttpServlet {
    private static final long serialVersionUID = 102831973239L;

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String mail = request.getParameter("mail");
        String tema = request.getParameter("tema");
        RequestDispatcher disp = null;
        Connection con = null;


        try {
            Class.forName(System.getenv("driver_bd"));
            con = DriverManager.getConnection(System.getenv("url_bd"), System.getenv("user_bd"), System.getenv("pass_bd"));
            final String STATEMENT = "insert into oradores (nombre, apellido, mail, tema) values (?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(STATEMENT);
            pst.setString(1, nombre);
            pst.setString(2, apellido);
            pst.setString(3, mail);
            pst.setString(4, tema);

            int rowCount = pst.executeUpdate();
            disp = request.getRequestDispatcher("index.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            disp.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

}