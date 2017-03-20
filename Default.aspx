<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.2.0.min.js"></script>
    <title>Currency Converter</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100%;
            padding-bottom: 60px;
        }

        .col-centered {
            float: none;
            margin: 0 auto;
        }

        footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px; /* Height of the footer */
            background: #6cf;
        }
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }
    </style>
</head>
<body>
    <form id="mainForm" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                    </ul>
                </div>
            </div>
        </nav>
        <div class="jumbotron">
            <div class="container text-center">
                <h1>Currency Converter</h1>
                <p>Convert Taka to USD or Pound or vice versa</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-1 col-centered">
                <asp:TextBox ID="currencyFromTB" runat="server"></asp:TextBox>

                <asp:DropDownList ID="currencyFromDD" Width="100px" runat="server">
                    <asp:ListItem Selected="True">Taka</asp:ListItem>
                    <asp:ListItem>Dollar</asp:ListItem>
                    <asp:ListItem>Pound</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="currencyToDD" runat="server">
                    <asp:ListItem>Taka</asp:ListItem>
                    <asp:ListItem Selected="True">Dollar</asp:ListItem>
                    <asp:ListItem>Pound</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="convertBTN" runat="server" Text="Convert" OnClick="convertBTN_Click" BackColor="#CCCCCC" BorderColor="#66FF66" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="#33CC33" />
                <br />
                <asp:TextBox ID="outputTB" runat="server" Visible="false"></asp:TextBox>
                <br />
            </div>
        </div>

    </form>
    <footer class="container-fluid text-center">
        <p>&copy; 2017 Ahnaf Shahriar </p>
    </footer>
</body>
</html>
