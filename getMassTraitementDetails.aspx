<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getMassTraitementDetails.aspx.cs" Inherits="getMassTraitementDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Payline demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div style="text-align: center">
                    <h2 style="text-align: left">
                        <span style="color: #ff6600">
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" NavigateUrl="~/Index.aspx">Back to Index</asp:HyperLink></span><span
                                style="color: #ff6600; font-family: Arial;">&nbsp;</span></h2>
                    <h2>
                        <span style="color: #ff6600">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.gif" /></span>&nbsp;</h2>
                    <h2>
                        <span style="color: #5f5f5f; font-family: Arial">Get mass treatment details</span></h2>
                        <span style="color: #ff6600"></span>
                    <hr style="font-family: Arial" />
                    <p>
                        <asp:Label ID="LabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="Error"
                            Visible="False"></asp:Label><span style="font-family: Arial">&nbsp;</span></p>
                    <p>
                                <table style="width: 698px; text-align: center; font-family: Arial;">
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <strong><span style="color: #97cb00">Result</span></strong></td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <span style="color: black">Code:</span></td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxResultCode" runat="server" Width="373px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <span style="color: #000000">Short message:</span></td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxResultShortMessage" runat="server" Width="373px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <span style="color: #000000">Long message:</span></td>
                                        <td style="width: 638px; height: 21px">
                                            <asp:TextBox ID="TextBoxResultLongMessage" runat="server" Width="373px"></asp:TextBox></td>
                                    </tr>
                                </table>
                    </p>
                    <hr style="font-family: Arial" />
                    <p>
                        <span style="font-family: Arial"><strong><span style="color: #5f5f5f">Returned results</span></strong><span
                            style="color: #ff6600"> </span></span>
                    </p>
                    <p>
                        <span style="color: #ff6600"><span><span style="color: #000000"></span></span></span>
                    </p>
                    <p>
                        <span style="font-family: Arial">Returned mass treatment ID: </span>
                                <asp:TextBox ID="TextBoxReturnedID" runat="server" ReadOnly="True"></asp:TextBox><br />
                        <span style="font-family: Arial">
                                Return total lines number: </span>
                                <asp:TextBox ID="TextBoxTotalLines" runat="server" ReadOnly="True"></asp:TextBox><br />
                        <span style="font-family: Arial">
                                Return failed lines number: </span>
                                <asp:TextBox ID="TextBoxFailedLines" runat="server" ReadOnly="True"></asp:TextBox></p>
                    <hr style="font-family: Arial" />
                    <p>
                        <span style="color: #ff6600">
                                <table style="width: 844px; text-align: center; font-family: Arial;">
                                    <tr>
                                        <td style="width: 435px; height: 21px; text-align: left">
                                            <span style="color: #ff6600"><strong style="color: #97cb00">Information about treatment </strong></span>
                                        </td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                        <td style="width: 638px; height: 21px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 435px; height: 26px; text-align: left">
                                            <span style="color: #000000">
                                            Mass treatment ID: </span>
                                        </td>
                                        <td style="width: 638px; height: 26px">
                                            <asp:TextBox ID="TextBoxMassTraitementID" runat="server" Width="373px"></asp:TextBox></td>
                                        <td style="width: 638px; height: 26px; text-align: left">
                                            <span style="color: #000000">
                                            (Required)</span></td>
                                    </tr>
                                </table>
                            <span style="font-family: Arial">&nbsp;</span></span><span style="font-family: Arial">&nbsp;</span></p>
                    <p>
                                <asp:Button ID="ButtonGetTreatmentDetails" runat="server" OnClick="ButtonDoPayment_Click"
                                    Text="Get treatment details" />&nbsp;</p>
                    <p>
                        <span style="color: #ff6600"></span>
                    </p>
                    <p>
                        <span style="font-family: Arial">
                        <span style="color: #ff6600">&nbsp;</span>&nbsp;</span></p>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
