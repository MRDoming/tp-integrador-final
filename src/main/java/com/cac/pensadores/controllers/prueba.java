package com.cac.pensadores.controllers;

import com.cac.pensadores.clases.Orador;
import jakarta.servlet.RequestDispatcher;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class prueba {

        /**
         * We establish the connection with the database <b>customerdb</b>.
         * Establecemos la conexión con la base de datos <b>customerdb</b>.
         */
        public static void main(String[] args) {
            try {
                // We register the PostgreSQL driver
                // Registramos el driver de PostgresSQL
                try {
                    Class.forName("org.postgresql.Driver");
                } catch (ClassNotFoundException ex) {
                    System.out.println("Error al registrar el driver de PostgreSQL: " + ex);
                }
                Connection connection = null;
                // Database connect
                // Conectamos con la base de datos
                connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/integrador_cac", "mariahomebanking", "1234");

                RequestDispatcher disp = null;
                final String STATEMENT = "insert into oradores (nombre, apellido, mail, tema) values (?,?,?,?)";
                PreparedStatement pst = connection.prepareStatement(STATEMENT);
                pst.setString(1, "hoola");
                pst.setString(2, "hola");
                pst.setString(3, "uemail");
                pst.setString(4, "upwd");

                int rowCount = pst.executeUpdate();

                final String STATEMENTDOS = "insert into users (nombre, apellido, email, password) values (?,?,?,?)";
                PreparedStatement pstt = connection.prepareStatement(STATEMENTDOS);
                pstt.setString(1, "hoola");
                pstt.setString(2, "hola");
                pstt.setString(3, "uemail");
                pstt.setString(4, "upwd");

                int rowCountt = pstt.executeUpdate();

                List<Orador> oradores = new ArrayList<>();

                String query = "SELECT nombre, apellido, mail, tema FROM oradores";
                PreparedStatement ps = connection.prepareStatement(query);

                // Ejecutar la consulta
                ResultSet rs = ps.executeQuery();

                // Obtener datos y almacenarlos en una lista de objetos Usuario
                while (rs.next()) {
                    String nombre = rs.getString("nombre");
                    String apellido = rs.getString("apellido");
                    String mail = rs.getString("mail");
                    String tema = rs.getString("tema");
                    oradores.add(new Orador(nombre, apellido, mail, tema));
                }

                System.out.println(oradores.size());
                System.out.println(oradores);

                System.out.println(rowCount);

                boolean valid = connection.isValid(50000);
                System.out.println(valid ? "TEST OK" : "TEST FAIL");
            } catch (java.sql.SQLException sqle) {
                System.out.println("Error: " + sqle);
            }
        }
        /**
         * Testing Java PostgreSQL connection with host and port
         * Probando la conexión en Java a PostgreSQL especificando el host y el puerto.
         * @param args the command line arguments
         */

    }

