/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Bakery;

/**
 *
 * @author janee
 */
public class DBConnection {

    public boolean insertNewbakery(Bakery bakery) {
        boolean result = false;
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bakery",
                    "my_root", "UBU_12345678");

            Statement statement;
            statement = connection.createStatement();

            // สร้าง String nutrient คั่นด้วย ;
            String nutrient = "";
            int nl = bakery.getNutrient().length;

            // วนลูปสร้างแค่ bakery.getNutrient().length ลบ 1 เพื่อไม่ให้มี ; ปิดท้าย String
            for (int i = 0; i < nl - 1; i++) {
                nutrient = nutrient + bakery.getNutrient()[i] + ";";
            }
            // เพิ่มค่า nutrient ตำแหน่งสุดท้ายเข้าไป
            nutrient = nutrient + bakery.getNutrient()[nl - 1];

            String query = "INSERT INTO bakery "
                    + "(name, type, nutrient, sweet, toping, detail, price) "
                    + "VALUES('"
                    + bakery.getName() + "','"
                    + bakery.getType() + "','"
                    + nutrient + "','"
                    + bakery.getSweet() + "','"
                    + bakery.getToping() + "','"
                    + bakery.getDetail() + "',"
                    + bakery.getPrice() + ")";
            System.out.println("........SQL: " + query);

            int i = statement.executeUpdate(query);	// executeUpdate returns row count ****
            if (i != 0) {
                result = true;
            }
            statement.close();
            connection.close();
        } catch (Exception exception) {
            System.out.println(exception);
        }

        return result;

    }

    /*
    https://www.geeksforgeeks.org/java-database-connectivity-with-mysql/
     */
    public Bakery getBakery(String bakeryName) throws SQLException {
        Bakery bakery = new Bakery();
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bakery",
                    "my_root", "UBU_12345678");

            Statement statement;
            statement = connection.createStatement();
            ResultSet resultSet;
            String query = "select * from bakery where name='" + bakeryName + "'";
            System.out.println(">>>>>>>>>> query=" + query);

            resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                bakery.setName(resultSet.getString("name").trim());
                bakery.setType(resultSet.getString("type").trim());
                bakery.setNutrient(resultSet.getString("nutrient").split(";"));
                bakery.setSweet(resultSet.getString("sweet"));
                bakery.setToping(resultSet.getString("toping"));
                bakery.setDetail(resultSet.getString("detail"));
                bakery.setPrice(resultSet.getInt("price"));
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException exception) {
            System.out.println(exception);
        }
        return bakery;
    }

}
