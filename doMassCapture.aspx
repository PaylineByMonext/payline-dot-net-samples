<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doMassCapture.aspx.cs" Inherits="doMassCapture" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Payline demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                    <span style="color: #5f5f5f; font-family: Arial">Do mass capture</span></h2>
                    <span style="color: #ff6600"></span>
                <hr style="font-family: Arial" />
                <p>
                        <asp:Label ID="LabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="Error"
                            Visible="False"></asp:Label><span style="font-family: Arial">&nbsp;</span></p>
                <p>
                    <span style="color: #ff6600">
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
                    </span></p>
                <hr />
                <p>
                    <span style="font-family: Arial"><strong><span style="color: #5f5f5f">Returned results</span></strong><span
                        style="color: #ff6600"> </span></span>
                </p>
                <p>
                    <span style="font-family: Arial">
                            Return mass treatment ID : </span>
                            <asp:TextBox ID="TextBoxMassTreatmentID" runat="server" ReadOnly="True"></asp:TextBox></p>
                <hr />
                <p>
                    <span style="font-size: 16pt; color: #ff6600"><strong><span style="font-family: Arial">
                        <span style="color: #5f5f5f">First item</span><br />
                    </span></strong></span>
                            <table style="width: 830px; text-align: center; font-weight: bold; font-size: 16pt; color: #ff6600; font-family: Arial;">
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left; color: black; font-family: Arial;">
                                        <span style="color: #97cb00; font-size: 12pt;">Information about transaction</span></td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 26px; text-align: left; font-weight: normal; color: black; font-family: Arial;">
                                        <span style="font-size: 12pt">Transaction ID: </span>
                                    </td>
                                    <td style="width: 638px; height: 26px; font-weight: bold;">
                                        <asp:TextBox ID="TextBoxTransactionID1" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        <span style="font-size: 12pt">(Required)</span></td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; color: black; font-family: Arial;">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 638px; height: 21px; font-weight: normal; color: black;">
                                    </td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; color: black; font-family: Arial;">
                                        <span style="color: #97cb00; font-size: 12pt;">Information about payment</span></td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 638px; height: 21px; font-weight: normal; color: black;">
                                    </td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black; font-family: Arial;">
                                        <span style="font-size: 12pt">Payment amount:</span></td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentAmount1" runat="server" Width="373px">33300</asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        <span style="font-size: 12pt">(Required)</span></td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black; font-family: Arial;">
                                        <span style="font-size: 12pt">Payment mode:</span></td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:DropDownList ID="DropDownListPaymentMode1" runat="server" Width="374px">
                                            <asp:ListItem>CPT</asp:ListItem>
                                            <asp:ListItem>DIF</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 638px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        <span style="font-size: 12pt">(Required)</span></td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black; font-family: Arial;">
                                        <span style="font-size: 12pt">Payment fonction:</span></td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:DropDownList ID="DropDownListPaymentFunction1" runat="server" Width="374px">
                                            <asp:ListItem Value="201">Full</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 638px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        <span style="font-size: 12pt">(Required)</span></td>
                                </tr>
                                <tr style="font-weight: bold; color: #ff6600">
                                    <td style="width: 435px; height: 21px; text-align: left; color: black; font-family: Arial;">
                                        <span style="font-weight: normal; font-size: 12pt; color: #000000">Payment currency:</span></td>
                                    <td style="width: 638px; height: 21px; color: #ff6600;">
                                        <asp:TextBox ID="TextBoxPaymentCurrency1" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        <span style="font-size: 12pt">(Required)</span></td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black; font-family: Arial;">
                                        <span style="font-size: 12pt">Contract number:</span></td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentContract1" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        <span style="font-size: 12pt">(Required)</span></td>
                                </tr>
                                <tr style="font-weight: bold; color: #ff6600">
                                    <td style="width: 435px; height: 21px; text-align: left; font-weight: normal; color: black; font-family: Arial;">
                                        <span style="font-size: 12pt">Differed action date:</span></td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentDifferedDate1" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left; font-weight: normal; color: black;">
                                        <span style="font-size: 12pt">dd/mm/yy</span></td>
                                </tr>
                            </table>
                            <br />
                    <span style="color: #000000"><span></span><span style="font-size: 16pt"><span style="font-family: Arial">
                        <span style="color: #5f5f5f"><strong>Second item</strong></span><br />
                    </span></span></span>
                            <table style="width: 828px; text-align: center; font-size: 12pt; color: #000000; font-family: Arial;">
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left">
                                        <span style="color: #97cb00"><strong>Information about transaction</strong></span></td>
                                    <td style="width: 638px; height: 21px; color: #000000;">
                                    </td>
                                    <td style="width: 638px; height: 21px; color: #000000;">
                                    </td>
                                </tr>
                                <tr style="color: #000000">
                                    <td style="width: 435px; height: 26px; text-align: left">
                                        Transaction ID:
                                    </td>
                                    <td style="width: 638px; height: 26px">
                                        <asp:TextBox ID="TextBoxTransactionID2" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 638px; height: 26px; text-align: left">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                    <td style="width: 638px; height: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left">
                                        <span style="color: #97cb00"><strong>Information about payment</strong></span></td>
                                    <td style="width: 638px; height: 21px; color: #000000;">
                                    </td>
                                    <td style="width: 638px; height: 21px; color: #000000;">
                                    </td>
                                </tr>
                                <tr style="color: #000000">
                                    <td style="width: 435px; height: 21px; text-align: left">
                                        Payment amount:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentAmount2" runat="server" Width="373px">33300</asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left">
                                        Payment mode:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:DropDownList ID="DropDownListPaymentMode2" runat="server" Width="374px">
                                            <asp:ListItem>CPT</asp:ListItem>
                                            <asp:ListItem>DIF</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 638px; height: 21px; text-align: left">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left">
                                        Payment fonction:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:DropDownList ID="DropDownListPaymentFunction2" runat="server" Width="374px">
                                            <asp:ListItem Value="201">Full</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 638px; height: 21px; text-align: left">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left">
                                        <span style="font-weight: normal; color: black">Payment currency:</span></td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentCurrency2" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left">
                                        Contract number:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentContract2" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left">
                                        (Required)</td>
                                </tr>
                                <tr>
                                    <td style="width: 435px; height: 21px; text-align: left">
                                        Differed action date:</td>
                                    <td style="width: 638px; height: 21px">
                                        <asp:TextBox ID="TextBoxPaymentDifferedDate2" runat="server" Width="373px"></asp:TextBox></td>
                                    <td style="width: 638px; height: 21px; text-align: left">
                                        dd/mm/yy</td>
                                </tr>
                            </table>
                            </p>
                <p>
                            <br />
                            <table style="width: 826px; text-align: center; font-size: 12pt; font-family: Arial;">
                                <tr>
                                    <td style="width: 450px; height: 26px; text-align: left">
                                        Comment:
                                    </td>
                                    <td style="width: 662px; height: 26px">
                                        <asp:TextBox ID="TextBoxComment" runat="server" Width="373px"></asp:TextBox></td>
                                </tr>
                            </table>
                </p>
                <p>
                    <span style="color: #ff6600"></span>
                </p>
                <p>
                    <span style="color: #ff6600"><span style="font-family: Arial">&nbsp;</span><asp:Button ID="ButtonDoMassCapture" runat="server" OnClick="ButtonDoPayment_Click"
                                Text="Do mass capture" /><span
                            style="font-family: Arial"> </span>
                    </span><span style="font-family: Arial">&nbsp;</span></p>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
