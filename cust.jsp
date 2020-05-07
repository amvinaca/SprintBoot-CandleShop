<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>

    <title>Noir Candles & Co.</title>
    <style>

        h3{
            text-align: center;

        }

        img.center
        {
            height: 100px;
            width: 80px;

            display: block;
            margin: 0 auto;
        }
        h1{
            text-align: center;
            margin-top: 0px;
        }

        #container {
            width: inherit;
            height: inherit;
            margin: 0;
            padding: 0;
            background-color: #A9A9A9;

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

    <img src="https://media2.giphy.com/media/41xwcrHYTu5MRA0QJx/source.gif" class="center">  <h1>Noir Candle & Co.</h1>
<div class="topnav">
    <a  href="/">Home</a>
    <a  class="active" href="/cust_list">Customer</a>
    <a href="/emp_list">Employee</a>
    <a href="/invent_list">Inventory</a>
    <a href="/trans_list">Transaction</a>
</div>
    <br>
    <form action="/searchcus">
        <input type="text" name="freeText" placeholder="Enter Text to Search">
        <input type="submit" value="Search">
    </form><br>
<table>
    <tr>
        <%-- <th>Product ID</th>--%>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name </th>
        <th>Phone Number </th>
        <th>Edit/Delete </th>

    </tr>
    <c:forEach var = "listitem" items = "${customerlist}">
        <tr>
            <td>${listitem.getCustomerid()}</td>
            <td>${listitem.getFirstname()}</td>
            <td>${listitem.getLastname()}</td>
            <td>${listitem.getPhonenumber()}</td>
            <td>
                    <%--   <a href="/view/${listitem.getCustomerid()}">View</a>--%>
                <a href="/editcust/${listitem.getCustomerid()}">Edit</a>
                <a href="/deleteCust/${listitem.getCustomerid()}">Delete</a>
            </td>

        </tr>
    </c:forEach>

</table>

<form method="post" action="/save_cust">
    <input type="hidden" name="customerid" value="${selectedItem.getCustomerid()}">
    <br>First Name: <br>
    <input type="text" name="firstname" value="${selectedItem.getFirstname()}">
    <br>
    Last Name:<br>
    <input type="text" name="lastname" value="${selectedItem.getLastname()}">
    <br>
    Phone Number:<br>
    <input type="text" name="phonenumber" value="${selectedItem.getPhonenumber()}">
    <br><br>
    <input type="submit" value="Submit">
</form>

<footer>

</footer>
    <br> <br>
</body>
</html>