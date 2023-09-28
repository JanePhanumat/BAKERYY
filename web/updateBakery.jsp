<%-- 
    Document   : newjsp
    Created on : 12 ก.ค. 2566, 19:18:29
    Author     : janee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Bakery" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Edit Bakery</h1>
        <%
            Bakery bakery = (Bakery) session.getAttribute("bakery");
        %>
        <form action="AddNewBakery2">
            <table>
            <tr><td align=right>Name:</td><td><input type="text" name="bakeryName"></td></tr>
            <tr><td align=right>Type:</td>
                <td>
                    <select name="bakeryType">
                        <option value="Cake">Cake</option>
                        <option value="Bread">Bread</option>
                        <option value="Puff Pastry">Puff Pastry</option>  
                        <option value="Croissant">Croissant</option>  
                        <option value="Choux paste">Choux paste</option>  
                    </select>
                </td>
            </tr>
            <tr><td align=right>Nutrient:</td>
                <td>
                    <input type="checkbox" name="nutrient" value="Protein">Protein
                    <input type="checkbox" name="nutrient" value="Carbohydrate">Carbohydrate<br>
                    <input type="checkbox" name="nutrient" value="Fat">Fat
                    <input type="checkbox" name="nutrient" value="Vitamin & Mineral">Vitamin & Mineral<br>
             </td>
            </tr>
            <tr>
                <td align=right>Sweet:</td>
                <td>
                    <input type="radio" name="sweet" value="not sweet">not sweet
                    <input type="radio" name="sweet" value="little sweet">little sweet
                    <input type="radio" name="sweet" value="very sweet">very sweet
                </td>
            </tr>
            <tr>
                <td align=right>Toping:</td>
                <td><input type="text" name="toping"></td>
            </tr>
            <tr>
                <td align=right>Detail:</td>
                <td><input type="text" name="detail"></td>
            </tr>
            <tr>
            <tr><td align=right>Price:</td><td><input type="text" name="price"></td></tr>
            <tr><td>&nbsp;</td><td><input type="submit" value="ADDNEWBAKERYY"></td></tr>
        </table>
    </form>
</body>
</html>
<% session.removeAttribute("bakery");%>

