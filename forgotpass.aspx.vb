Imports System
Imports System.Data.SqlClient
Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Collections
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim cmd As New SqlCommand
            Dim con As New SqlConnection
            con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
            con.Open()
            cmd.Connection = con
            cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "SecquesVerify"
        cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = Int(TextBox1.Text())
        cmd.Parameters.Add("@qno", SqlDbType.Int).Value = DropDownList1.SelectedItem.Value
        cmd.Parameters.Add("@ans", SqlDbType.VarChar).Value = (login_pass.Text())
        cmd.Parameters.Add("@check", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.ExecuteNonQuery()
            Dim i As Int16
            i = cmd.Parameters("@check").Value
        If (i = 1) Then
            Session.Add("User", TextBox1.Text())

            Response.Redirect("~/changepass.aspx")
        Else
            MsgBox("Invalid Details")

            End If



    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
