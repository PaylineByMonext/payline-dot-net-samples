using System;
using SDKPaylineDotNet;
using SDKPaylineDotNet.DirectPaymentAPI;

public partial class doRefund : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonDoPayment_Click(object sender, EventArgs e)
    {
        // Retrieve payment informations
        payment myPayment = new payment();
        myPayment.amount = TextBoxPaymentAmount.Text;
        myPayment.currency = TextBoxPaymentCurrency.Text;
        myPayment.action = DropDownListPaymentFunction.SelectedValue;
        myPayment.mode = DropDownListPaymentMode.SelectedValue; ;
        myPayment.contractNumber = TextBoxPaymentContract.Text;
        myPayment.differedActionDate = TextBoxPaymentDifferedDate.Text;

        //Returned datas
        transaction myTransaction = new transaction();

        try
        {
            var client = PaymentApiFactory.GetDirectPaymentAPIClient();
            var Result = client.doRefund(GlobalVariables.APIVersion, TextBoxTransactionID.Text, myPayment, TextBoxTransactionComment.Text, null, null, null, null, out myTransaction);

            //Returned datas
            TextBoxResultCode.Text = Result.code;
            TextBoxResultShortMessage.Text = Result.shortMessage;
            TextBoxResultLongMessage.Text = Result.longMessage;

            TextBoxTransactionDate.Text = myTransaction.date;
            TextBoxReturnedID.Text = myTransaction.id;
        }
        catch (Exception E)
        {
            LabelError.Visible = true;
            LabelError.Text = "Error : " + E.ToString();
        }
    }
}
