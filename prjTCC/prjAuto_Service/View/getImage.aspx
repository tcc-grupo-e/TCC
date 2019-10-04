<%@ Page Language="C#" Debug="true" %>

<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    public void Page_Load()
    {
        string path = (Request.QueryString["path"]);


        Label1.Text += "Insira a foto armazenada em: "+ path;
    }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://ww.w3.org/TR/xhtml1/DTD/xhtml1-transitional.detd">

<html xmlns="http://www.w3.org/1999.xhtml">
<head id = "Head1" runat = "server">
    <title></title>
    <link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
    <script>
        function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
            console.log(e.target.result);
                $('#blah')
                    .attr('src', e.target.result)
                    .width(200)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    </script>
    
    
</head>
<body>
 <form id = "form1" runat = "server">
 <div>
     <asp:Label ID = "Label1" runat = "server"></asp:Label><br /><br />
     <input id="in" type="file" onchange="readURL(this);"/>
	
    <img id="blah" src="#" alt="your image" />
 </div>
 </form>
</body>
</html>
