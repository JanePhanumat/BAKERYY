<%-- 
    Document   : addNewBakery
    Created on : 18 ก.ค. 2566, 16:14:44
    Author     : janee
--%>

<%@page import="java.util.Arrays"%>
<%@page import="model.Bakery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
</head>
<body>
    <title>successfully</title>
<html>
    <body>
        <h1>successfully added cake</h1>
        <%
            Bakery bakery = (Bakery) session.getAttribute("bakery");
        %>
        Name: <%= bakery.getName()%><br/>
        Type: <%= bakery.getType()%><br/>
        Nutrient: <%
            for (String n : bakery.getNutrient()) {
                out.print(n + " ");
            }
        %><br/>
        Sweet: <%= bakery.getSweet()%><br>
        Toping: <%= bakery.getToping()%><br/>
        Detail: <%= bakery.getDetail()%><br/>
        Price:<%= bakery.getPrice()%><br/>
        <a href="updateBakery.jsp">Edit</a><br>
        <a href="index.html">Home</a><br>
    </body>
</html>


