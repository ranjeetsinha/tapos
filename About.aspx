<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<script type="text/javascript">
    var count = 0;
    function prt() {
        var htnl = '<div id="receipt" >   <LINK REL="stylesheet" type="text/css" media="print, handheld" href="StyleSheet.css">    <h1>Printing </h1>  <h2>    About   </h2>  <div id="receipt-content">     Put content here.<br />    sdfhasdjfhsjfasdg  adfknafkajg<br />     rqanjeet<br />  </div>  <table><tr><td>Item</td><td>Rate</td><td>Qty</td></tr>   <tr><td>Lava Masala</td><td>100</td><td>2</td></tr>   <tr><td>Mutter Masala</td><td>200</td><td>3</td></tr>   <tr><td>Paner Masala</td><td>100</td><td>2</td></tr>   </table>   </div>'         
        var printWin = window.open("", "printSpecial");
        printWin.document.open();
        printWin.document.write(htnl);
        printWin.document.close();
        printWin.print();
        printWin.window.close();
      
        if (count == 0) {
            prt();
            count++
        }
    }
</script>
 <LINK REL="stylesheet" type="text/css" media="print, handheld" href="StyleSheet.css"> 
   
  <%-- <div id="receipt" style="visibility:hidden">

   <LINK REL="stylesheet" type="text/css" media="print, handheld" href="StyleSheet.css"> 
   <h1>Printing </h1>
    <h2>
        About
    </h2>
    <div id="receipt-content">
        Put content here.<br />
        sdfhasdjfhsjfasdg  adfknafkajg<br />
        rqanjeet<br />
    </div>
    <table><tr><td>Item</td><td>Rate</td><td>Qty</td></tr>
    <tr><td>Lava Masala</td><td>100</td><td>2</td></tr>
    <tr><td>Mutter Masala</td><td>200</td><td>3</td></tr>
    <tr><td>Paner Masala</td><td>100</td><td>2</td></tr>
    </table>
    </div>--%>
    <button id="Print" onclick=" prt() ">Print Page</button>
</asp:Content>
