<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>

    <%-- <style rel="stylesheet" href="css.css"></style>--%>
        <title>Noir Candles & Co.</title>
        <style>

            h3{
                text-align: center;

            }

            img
            {
                height: 100px;
                width: 80px;
            }
            h1{
                text-align: center;
                margin-top: 0px;
                margin-bottom: 0px;
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
    <img src="https://media2.giphy.com/media/41xwcrHYTu5MRA0QJx/source.gif">  <h1>Noir Candle & Co.</h1>
    <br>
</div>

<div class="topnav">
    <a  href="/">Home</a>
    <a href="/cust_list">Customer</a>
    <a href="/emp_list">Employee</a>
    <a href="/invent_list">Inventory</a>
    <a  class="active" href="/trans_list">Transaction</a>
</div>
<br>
<form action="/searchtra">
    <input type="text" name="freeText" placeholder="Enter Text to Search">
    <input type="submit" value="Search">
</form><br>
<table>
    <tr>
        <%-- <th>Product ID</th>--%>
        <th>Transaction ID</th>
        <th>Customer</th>
        <th>Employee</th>
            <th>Product </th>
            <th>Price </th>
            <th>Receipt Number </th>
            <th>Edit/Delete </th>
    </tr>
    <c:forEach var = "transitem" items = "${transactionlist}">
        <tr>

                <%--<td>${listitem.getId()}</td>--%>
            <td>${transitem.getTransactionid()}</td>


                    <td>${transitem.getCustomeridfk()}</td>
            <td>${transitem.getEmployeeid()}</td>
                    <td>${transitem.getInventoryidfk()}</td>
                    <td>${transitem.getPricen()}</td>
                    <td>${transitem.getReceiptnum()}</td>
                    <td>
                            <%--   <a href="/view/${listitem.getEmployeeid()}">View</a>--%>
                             <a href="/edittran/${transitem.getTransactionid()}">Edit</a>
                      <a href="/delete/${transitem.getTransactionid()}">Delete</a>
                    </td>

        </tr>


    </c:forEach>


</table>

<%--
<form action="list" method="post">
    Select a Category:&nbsp;
    <select name="category">
        <c:forEach items="${listCategory}" var="category">
            <option value="${category.id}"
                    <c:if test="${category.id eq selectedCatId}">selected="selected"</c:if>
            >
                    ${category.name}
            </option>
        </c:forEach>
    </select>
    <br/><br/>
    <input type="submit" value="Submit" />
</form>
--%>


<%--<form method="post" action="/saveTrans">
   <select name="transitem" id="mySelect">
        <c:forEach items="${transactionlist}" var="transitem">

            <option value="${transitem.getCustomeridfk()}">${transitem.getCustomeridfk()}</option>
        </c:forEach>
    </select>

    <input type="hidden" name="" value="${selectedItem.getCustomeridfk("transitem")}">
    <input type="hidden" name="transactionid" value="${selectedItem.getTransactionid()}">
    Receipt Number:<br>
    <input type="text" name="receiptnum" value="${selectedItem.getReceiptnum()}">
    <br>
    Receipt Number:<br>
    <input type="hidden" name="customern" id="demo" value="${selectedItem.getCustomeridfk()}">
    <br><br>
    <button type="button" value="Submit" onclick="myFunction()">Try it</button>

</form>--%>

<form method="post" action="/saveTrans">
    <input type="hidden" name="transactionid" value="${selectedItem.getTransactionid()}">
    <br>
   Customer:<br>
    <input type="text" name="customern" value="${selectedItem.getCustomeridfk()}">
    <br>
    Employee:<br>
    <input type="text" name="employeen" value="${selectedItem.getEmployeeid()}">
    <br>
    Inventory:<br>
    <input type="text" name="inventoryn" value="${selectedItem.getInventoryidfk()}">
    <br>
    Price:<br>
    <input type="text" name="pricen" value="${selectedItem.getPricen()}">
    <br>
    Receipt Number:<br>
    <input type="text" name="receiptnum" value="${selectedItem.getReceiptnum()}">
    <br> <br>
    <input type="submit" value="Submit">
</form>




<footer>

</footer>
<br> <br>
</body>
</html>
