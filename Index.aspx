<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Payline demo</title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <h1>
        <span style="color: #ff6600; font-family: Arial;"><span style="color: #5f5f5f"></span>
        </span><span style="color: #ff6600; font-family: Arial"><span style="color: #5f5f5f">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/externalisation_r1_c2.jpg" />
            &nbsp; &nbsp; &nbsp;&nbsp; Examples C# &nbsp; &nbsp; &nbsp; &nbsp;<asp:Image ID="Image1"
                runat="server" ImageUrl="~/logo.gif" /></span></span></h1>
        <div style="text-align: center">
            <hr />
            <br />
        </div>
        <h2 style="text-align: center">
            <span style="color: #97cb00; font-family: Arial;">Payline WebPaymentAPI</span></h2>
        <div>
            <ul>
                <li style="text-align: center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/orderDemo.aspx" Font-Names="Arial">orderDemo sample</asp:HyperLink><span
                        style="font-family: Arial"> </span></li>
                <li style="text-align: center">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/invoiceDemo.aspx" Font-Names="Arial">invoiceDemo sample</asp:HyperLink><span
                        style="font-family: Arial"> </span></li>
            </ul>
        </div>
        <br />
        <h2 style="text-align: center">
            <span style="color: #97cb00; font-family: Arial;">Payline DirectPaymentAPI</span></h2>
        <ul>
            <li style="text-align: center">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/doAuthorization.aspx" Font-Names="Arial">askForAuthorization sample</asp:HyperLink><span
                    style="font-family: Arial"> </span></li>
            <li style="text-align: center">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/doCapture.aspx" Font-Names="Arial">askForCapture sample</asp:HyperLink><span
                    style="font-family: Arial"> </span></li>
            <li style="text-align: center">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/doRefund.aspx" Font-Names="Arial">askForRefund sample</asp:HyperLink><span
                    style="font-family: Arial"> </span></li>
            <li style="text-align: center">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/doCredit.aspx" Font-Names="Arial">askForCredit sample</asp:HyperLink><span
                    style="font-family: Arial"> </span></li>
        </ul>
        <p>
            <span style="color: #ff6600"></span>&nbsp;</p>
        <h2 style="text-align: center">
            <span style="color: #ff6600"></span><span style="color: #000000"></span><span
                style="color: #97cb00; font-family: Arial;">Payline MassPaymentAPI</span></h2>
        <ul>
            <li style="text-align: center">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/doMassCapture.aspx" Font-Names="Arial">askForMassCapture sample</asp:HyperLink><span
                    style="font-family: Arial"> </span></li>
            <li style="text-align: center">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/doMassRefund.aspx" Font-Names="Arial">askForMassRefund sample</asp:HyperLink><span
                    style="font-family: Arial"> </span></li>
            <li style="text-align: center">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/getMassTraitementDetails.aspx" Font-Names="Arial">getMassTreatmentDetails sample</asp:HyperLink><span
                    style="font-family: Arial"> </span></li>
        </ul>
            <p>
                &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <span style="color: #ff6600"></span>&nbsp;</p>
    </form>
</body>
</html>
