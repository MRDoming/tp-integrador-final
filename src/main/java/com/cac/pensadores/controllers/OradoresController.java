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

@WebServlet(name="oradores", value="/oradores")
public class OradoresController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uname = request.getParameter("nombre");
        String usurname = request.getParameter("apellido");
        String uemail = request.getParameter("mail");
        String upwd = request.getParameter("tema");
        RequestDispatcher disp = null;
        Connection con = null;


        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/integrador_cac", "mariahomebanking", "1234");
            final String STATEMENT = "insert into oradores (nombre, apellido, mail, tema) values (?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(STATEMENT);
            pst.setString(1, uname);
            pst.setString(2, usurname);
            pst.setString(3, uemail);
            pst.setString(4, upwd);

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