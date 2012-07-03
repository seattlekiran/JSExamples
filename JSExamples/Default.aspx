<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="JSExamples._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script type="text/javascript">

        (function () {
            //alert(arguments.length); //0
            alert(this.location);

            test(;)
        })();

        function test() {
            alert(this.location);
        }

    </script>
</asp:Content>
