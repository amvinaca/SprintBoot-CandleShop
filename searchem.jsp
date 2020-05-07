<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>

    <title>Noir Candles & Co.</title>
    <style>

        h3{
            text-align: center;

        }
        h1{
            text-align: center;

        }



        #container {
            width: inherit;
            height: inherit;
            margin: 0;
            padding: 0;
            background-color: #A9A9A9;
            text-align: center;
        }


        table {
            border-collapse: collapse;
            width: 100%;


        }
        td,th {
            border: 2px solid #252525;
            text-align: left;
            padding: 8px;
        }

        .topnav {
            background-color: #333;
            overflow: hidden;
        }

        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #FFFAF0;
            color: Black;
        }

        body{
            background-color: #A9A9A9;
        }
    </style>



</head>
<body>


<div id="container">
    <h1>Noir Candle & Co.</h1>
    <br>
</div>

<div class="topnav">
    <a href="/">Home</a>
    <a href="/cust_list">Customer</a>
    <a href="/emp_list">Employee</a>
    <a  class="active" href="/invent_list">Inventory</a>
    <a href="/trans_list">Transaction</a>
</div>
<%--<form action="<s:url value="/user/invent_search"/>">
    <input type="text" name="freeText" placeholder="Enter Text to Search">
    <button>Find</button>
</form>--%>


<table>
    <tr>
        <%-- <th>Product ID</th>--%>
        <th>ID</th>
        <th>Description</th>
        <th>Price </th>
        <th>Edit </th>

    </tr>
    <c:forEach var = "inventitem" items = "${employeelist}">
        <tr>


            <td>${inventitem.getEmployeeid()}</td>
            <td>${inventitem.getFirstname()}</td>
            <td>${inventitem.getLastname()}</td>
            <td>

                <input type="text" name="freeText" placeholder="Enter Text to Search">
                <input type="submit" value="Search">

            </td>


        </tr>
        <br>

    </c:forEach>


</table>



<footer>

</footer>
</body>
</html>
