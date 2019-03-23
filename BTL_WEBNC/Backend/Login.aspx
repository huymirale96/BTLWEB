<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTL_WEBNC.Backend.Login"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <!-- MetisMenu CSS -->
    <link href="../Content/backend/metisMenu.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../Content/backend/sb-admin-2.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="../Content/backend/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form id="form1" runat="server">
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox ID="user" runat="server" class="form-control" placeholder="Username" name="user" type="text"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password" name="email" type="password"></asp:TextBox>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="cbremember" runat="server" name="remember" value="Remember Me" />Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="login" runat="server"  Text="Login" class="btn btn-lg btn-success btn-block" OnClick="login_Click"/>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>
