using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleWebFormApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (rbList.SelectedValue == "2") { returnDate.Visible = false; }
            else { returnDate.Visible = true; }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (rbList.SelectedValue == "1")
            {
                fromLbl.Text = fromList.SelectedValue;
                toLbl.Text = toList.SelectedValue;
                departureLbl.Text = departure.SelectedDate.ToShortDateString();
                fromLabel.Text = fromList.SelectedValue;
                toLabel.Text = toList.SelectedValue;
                returnLbl.Text = returnDate.SelectedDate.ToShortDateString();
            }
            else if (rbList.SelectedValue == "2")
            {
                fromLbl.Text = fromList.SelectedValue;
                toLbl.Text = toList.SelectedValue;
                departureLbl.Text = departure.SelectedDate.ToShortDateString();
                fromLabel.Visible = false;
                toLabel.Visible = false;
                returnLbl.Visible = false;
            }
            else
            {

            }

        }

        protected void fromList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] list1 = new string[] { "Ankara", "İzmir", "Muğla", "Düsseldorf", "Paris" };
            string[] list2 = new string[] { "Adana", "Antalya", "İstanbul", "Berlin", "Trabzon", "Gaziantep" };
            string[] list3 = new string[] { "Amsterdam", "Stuttgart", "Berlin", "Tokyo" };

            toList.Items.Clear();
            toList.Items.Add("Select City");
            if (fromList.SelectedValue == "Antalya")
            {
                foreach (string city in list1)
                {
                    toList.Items.Add(city);
                }
            }
            else if (fromList.SelectedValue == "Ankara")
            {
                foreach (string city in list2)
                {
                    toList.Items.Add(city);
                }
            }
            else if (fromList.SelectedValue == "İzmir")
            {
                foreach (string city in list3)
                {
                    toList.Items.Add(city);
                }
            }
        }
    }
}