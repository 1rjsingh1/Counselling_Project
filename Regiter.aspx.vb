
Imports System
Imports System.Data.SqlClient
Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Collections
Partial Class Regiter
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim cmd As New SqlCommand
        Dim con As New SqlConnection
        con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
        con.Open()

        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "insertdata"
        cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = Int(TextBox1.Text())
        cmd.Parameters.Add("@name", SqlDbType.VarChar, 20).Value = (TextBox2.Text())
        cmd.Parameters.Add("@father", SqlDbType.VarChar, 20).Value = (TextBox3.Text())
        cmd.Parameters.Add("@mobileno", SqlDbType.BigInt).Value = (TextBox4.Text())
        cmd.Parameters.Add("@address", SqlDbType.VarChar, 20).Value = (TextBox5.Text())
        cmd.Parameters.Add("@city", SqlDbType.VarChar, 20).Value = (TextBox6.Text())
        cmd.Parameters.Add("@state", SqlDbType.VarChar, 20).Value = (DropDownList2.Text())
        cmd.Parameters.Add("@dob", SqlDbType.Date).Value = (TextBox8.Text())
        cmd.Parameters.Add("@seqques", SqlDbType.NChar, 100).Value = (DropDownList1.Text())
        cmd.Parameters.Add("@seqans", SqlDbType.NChar, 20).Value = (TextBox10.Text())
        cmd.ExecuteNonQuery()
        Session.Add("User", Int(TextBox1.Text()))
        Response.Redirect("~/ranks.aspx")







    End Sub
End Class
