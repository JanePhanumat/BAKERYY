<%-- 
    Document   : AddNewBakery1
    Created on : 20 ก.ค. 2566, 13:51:59
    Author     : janee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h2>AddBakery!!!</h2>
<form action="AddNewBakeryMySQL">
    <table>
        <tr><td>Name:</td><td><input type="text" name="bakeryName"></td>
        <tr><td>Type:</td>
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
        <tr><td>Nutrient:</td>
            <td>
                <input type="checkbox" name="nutrient" value="Protein">Protein
                <input type="checkbox" name="nutrient" value="Carbohydrate">Carbohydrate<br>
                <input type="checkbox" name="nutrient" value="Fat">Fat
                <input type="checkbox" name="nutrient" value="Vitamin & Mineral">Vitamin & Mineral<br>
            </td>
            </tr>
            <tr>
                <td>Sweet:</td>
                <td>
                    <input type="radio" name="sweet" value="not sweet">not sweet
                    <input type="radio" name="sweet" value="little sweet">little sweet
                    <input type="radio" name="sweet" value="very sweet">very sweet
                </td>
            </tr>
            <tr>
                <td>Toping:</td>
                <td><input type="text" name="toping"></td>
            </tr>
            <tr>
                <td>Detail:</td>
                <td><input type="text" name="detail"></td>
            </tr>
            <tr>
        <tr><td>Price:</td><td><input type="text" name="price"></td></tr>
        <tr><td>&nbsp;</td><td><input type="submit" value="ADDNEWBAKERYY"></td></tr>
    </table>
</form>