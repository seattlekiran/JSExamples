<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="JSExamples.Customer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
    <script src="Scripts/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="Scripts/General.js" type="text/javascript"></script>
    <script src="Scripts/Customer.js" type="text/javascript"></script>
    <script type="text/javascript">
        var customers = [];

        (function () {
            var c1 = new Customer(10, 'kiran', 'challa'); 
            var c2 = new Customer(10, 'kiran', 'challa');

            alert(Customer.compareCustomers(c1, c2));
        })();

        function test(name, age) {
            validateArgs([String, Number], arguments);
            alert(name + age);
        };

        function addCustomer() {
            var id = id('txtId');
            var firstName = id('txtFirstName').value;
            var lastName = id('txtLastName').value;

            var customer = new Customer(id, firstName, lastName);

            customers.push(customer);

            var tc = id('totalCustomers');
            tc.innerHTML = customers.length;

            displayCustomers();
        };

        function displayCustomers() {
            var divCustomers = id('divCustomers');
            var innerHtml = '';

            for (var i = 0; i < customers.length; i++) {
                innerHtml += '<label>' + customers[i].toString() + '</label><br/>';
            }

            divCustomers.innerHTML = innerHtml;
        };
    </script>
</head>
<body>
    <div id="divcustomer">
        <label id="lblId">
            Id:
        </label>
        <input id="txtId" type="text" /><br />
        <label id="lblFirstName">
            FirstName:
        </label>
        <input id="txtFirstName" type="text" /><br />
        <label id="lblLastName">
            LastName:
        </label>
        <input id="txtLastName" type="text" /><br />
        <br />
        <input id="btnAddCustomer" type="button" value="Add Customer" onclick="javascript:addCustomer();" /><br />
        <br />
        <label id="lblTotalCustomers">
            Total Customers:
        </label>
        <label id="totalCustomers">
        </label>
    </div>
    <br />
    <br />
    <%--<ul id="listCustomers">
    </ul>--%>
    <div id="divCustomers">
    </div>
</body>
</html>
