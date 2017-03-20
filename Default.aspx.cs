using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        outputTB.Text = "";
    }


    protected void convertBTN_Click(object sender, EventArgs e)
    {
        String input = currencyFromTB.Text;
        String currencyFromValue = currencyFromDD.Text;
        String currencyToValue = currencyToDD.Text;
        outputTB.Visible = true;
        if (currencyFromValue == "Taka" && currencyToValue == "Dollar")
        {
            double exchangeRate = 0.0125;
            double taka = Convert.ToDouble(input);
            double dollar = taka * exchangeRate;
            outputTB.Text = dollar.ToString() + " Dollars";
        }
        else if (currencyFromValue == "Dollar" && currencyToValue == "Taka")
        {
            double exchangeRate = 80.00;
            double dollar = Convert.ToDouble(input);
            double taka = dollar * exchangeRate;
            outputTB.Text = taka.ToString() + " Taka";
        }
        else if (currencyFromValue == "Taka" && currencyToValue == "Pound")
        {
            double exchangeRate = 0.0100967;
            double taka = Convert.ToDouble(input);
            double pound = taka * exchangeRate;
            outputTB.Text = pound.ToString() + " Pounds";
        }
        else if (currencyFromValue == "Pound" && currencyToValue == "Taka")
        {
            double exchangeRate = 99.0425;
            double pound = Convert.ToDouble(input);
            double taka = pound * exchangeRate;
            outputTB.Text = taka.ToString() + " Taka";
        }
        else if (currencyFromValue == "Pound" && currencyToValue == "Dollar")
        {
            double exchangeRate = 1.23530;
            double pound = Convert.ToDouble(input);
            double dollar = pound * exchangeRate;
            outputTB.Text = dollar.ToString() + " Dollars";
        }
        else if (currencyFromValue == "Dollar" && currencyToValue == "Pound")
        {
            double exchangeRate = 0.809518;
            double dollar = Convert.ToDouble(input);
            double pound = dollar * exchangeRate;
            outputTB.Text = pound.ToString() + " Pound";
        }
        else
        {
            outputTB.Text = input.ToString() + " " + currencyFromValue + " Hello";
        }
    }
}