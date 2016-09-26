<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <table>
       <tr>
           <td><label> Mark1 :</label></td>
           <td><input type="number" id="txtmark1" runat="server" /></td>
       </tr>
       <tr>
           <td><label> Mark2 :</label></td>
           <td><input type="number" id="txtmark2" runat="server" /></td>
       </tr>
        <tr>
           <td><label> Mark3 :</label></td>
           <td><input type="number" id="txtmark3" runat="server" /></td>
       </tr>
       <tr>
           <td colspan="2">
               <asp:Button ID="submit" Text="Submit" runat="server" OnClick="submit_Click" />
           </td>
       </tr>

       <tr>
           <td colspan="2">
               <label id="percentage" runat="server">Percentage :</label>
               <label id="gradetxt" runat="server">Grade:</label>
           </td>
       </tr>

   </table>
    </form>
</body>
</html>
