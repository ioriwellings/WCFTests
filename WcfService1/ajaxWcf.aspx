<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxWcf.aspx.cs" Inherits="WcfService1.ajaxWcf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-2.1.4.min.js"></script>
    <script>


        $.ajax({
            type: "post",
            url: "/Service1.svc/getName",
            data: '{"name":[0,1,2],"imageBuffer":[0,1,2]}',
            contentType: 'application/json; charset=utf-8',
            dataType: "json",
            success: function (data)
            {
                alert(data);
            },
            error: function (data)
            {
                alert(data.statusText);
            }
        });
    </script>
    </form>
</body>
</html>
