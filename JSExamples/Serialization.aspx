<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Serialization.aspx.cs"
    Inherits="JSExamples.Serialization" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Serialization Examples</title>
    <script src="Scripts/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="Scripts/Customer.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var c1 = new Customer(1, "kiran", "challa");

            //serialize
            var serData = serialize(c1);

            //de-serialize
            var c2 = JSON.parse(serData);

            //compare the above 2 objects
            alert(Customer.compareCustomers(c1, c2));

            alert(serialize(c2));
        });

        function serialize(data) {
            return JSON.stringify(data);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong>Serialization Examples</strong>
    </div>
    </form>
</body>
</html>
