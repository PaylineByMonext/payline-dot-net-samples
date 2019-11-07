<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoiceDemo.aspx.cs" Inherits="invoiceDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payline demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align: center">
                <h2 style="text-align: left">
                    <span style="color: #ff6600">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" NavigateUrl="~/Index.aspx">Back to Index</asp:HyperLink></span><span
                            style="font-family: Arial">&nbsp;</span></h2>
                <h2>
                    <span style="color: #ff6600">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.gif" /></span>&nbsp;</h2>
                <h2>
                    <span style="color: #5f5f5f; font-family: Arial">Get web payment details</span></h2>
                <span style="color: #ff6600"></span>
                <hr style="font-family: Arial" />
                <p>
                    <asp:Label ID="LabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="Error"
                        Visible="False" Font-Names="Arial"></asp:Label><span style="font-family: Arial">&nbsp;</span>
                </p>
                <p>
                    <span style="color: #ff6600">
                        <table style="width: 698px; text-align: center; font-family: Arial;">
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <strong><span style="color: #97cb00">Result</span></strong></td>
                                <td style="width: 638px; height: 21px"></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: black">Code:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxResultCode" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Short message:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxResultShortMessage" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Long message:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxResultLongMessage" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                        </table>
                    </span>
                </p>
                <p>
                    <span style="color: #5f5f5f"></span><strong></strong>
                    <hr style="font-family: Arial" />
                    &nbsp;
                </p>
                <p>
                    <span style="font-weight: bold; font-family: Arial">&nbsp;Returned results</span></STRONG></SPAN>
                </p>
                <p>
                    <span style="color: #ff6600">
                        <table style="width: 640px; text-align: center; font-family: Arial;">
                            <tr>
                                <td style="width: 369px; height: 21px; text-align: left">
                                    <span style="color: #ff6600"><strong style="color: #97cb00; font-family: Arial">Transaction</strong></span></td>
                                <td style="width: 638px; height: 21px"></td>
                            </tr>
                            <tr>
                                <td style="width: 369px; text-align: left; color: black; font-family: Arial;">Date:
                                </td>
                                <td style="width: 638px">
                                    <asp:TextBox ID="TextBoxDate" runat="server" ReadOnly="True" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 369px; text-align: left; color: black; font-family: Arial;">ID:
                                </td>
                                <td style="width: 638px">
                                    <asp:TextBox ID="TextBoxTransactionID" runat="server" ReadOnly="True" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 369px; height: 21px"></td>
                                <td style="width: 638px; height: 21px"></td>
                            </tr>
                            <tr>
                                <td style="width: 369px; height: 21px; text-align: left">
                                    <span style="color: #ff6600"><strong style="color: #97cb00; font-family: Arial">Payment</strong></span></td>
                                <td style="width: 638px; color: #000000; height: 21px"></td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 369px; color: black;">
                                    <div id="result_box" dir="ltr" style="text-align: left; font-family: Arial;">
                                        Amount :
                                    </div>
                                </td>
                                <td style="width: 638px">
                                    <asp:TextBox ID="TextBoxAmount" runat="server" ReadOnly="True" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 369px; text-align: left; color: black;">Currency :</td>
                                <td style="width: 638px; font-family: Times New Roman;">
                                    <asp:TextBox ID="TextBoxCurrency" runat="server" ReadOnly="True" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 369px; height: 21px">
                                </td>
                                <td style="width: 638px; height: 21px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 369px; height: 21px; text-align: left">
                                    <span style="color: #ff6600"><strong style="color: #97cb00; font-family: Arial">Buyer</strong></span></td>
                                <td style="width: 638px; color: #000000; height: 21px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">CustomerId:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerCustomerId" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Mobile Phone:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerMobilePhone" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Email:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerEmail" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Legal Status:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerLegalStatus" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Legal Document:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerLegalDocument" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 435px; height: 21px; text-align: left">
                                    <span style="color: #000000">Birth Date:</span></td>
                                <td style="width: 638px; height: 21px">
                                    <asp:TextBox ID="TextBoxBuyerBirthDate" runat="server" Width="373px" Font-Names="Arial"></asp:TextBox></td>
                            </tr>
                            
                        </table>
                    </span>
                </p>
                <hr style="font-family: Arial" />
                <p>
                    <span style="color: #ff6600"></span>
                </p>
                <p>
                    <span style="color: #ff6600"><span style="color: #000000; font-family: Arial">Payment token : </span>
                        <asp:TextBox ID="TextBoxToken" runat="server" Font-Names="Arial"></asp:TextBox><span
                            style="font-family: Arial"> <span style="color: #000000">(Required)<br />
                            </span>
                            <br />
                        </span>
                        <asp:Button ID="ButtonGetPaymentDetails" runat="server" OnClick="ButtonDoPayment_Click"
                            Text="Get Web payment details" /><span style="font-family: Arial"> </span>
                    </span><span style="font-family: Arial">&nbsp;</span>
                </p>
            </div>

        </div>
    </form>
</body>
</html>
