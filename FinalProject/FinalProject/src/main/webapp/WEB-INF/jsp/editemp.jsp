<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
    <a  href="/">Home</a>
    <a href="/cust_list">Customer</a>
    <a  class="active" href="/emp_list">Employee</a>
    <a href="/invent_list">Inventory</a>
    <a href="/trans_list">Transaction</a>
</div>

<form method="post" action="/save_emp">
    <br>
    First Name:<br>
    <input type="hidden" name="employeeid" value="${selectedItem.getEmployeeid()}">
    <input type="text" name="firstname" value="${selectedItem.getFirstname()}">
    <br>
    Last Name:<br>
    <input type="text" name="lastname" value="${selectedItem.getLastname()}">
    <br>
    Phone Number: <br>
    <input type="text" name="phonenumber" value="${selectedItem.getPhonenumber()}">
    <br>
    Email: <br>
    <input type="text" name="email" value="${selectedItem.getEmail()}">
    <br>
    <input type="submit"  value="save">

</form>

</form>
<footer>

</footer>
</body>
</html>