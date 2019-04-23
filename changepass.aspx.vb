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
        cmd.CommandText = "Changepass"
        cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = Session.Item("User")
        cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = (login_pass.Text())
        If (String.Compare(TextBox1.Text(), login_pass.Text()) = 0) Then
            cmd.ExecuteNonQuery()
            MsgBox("Password Updated Successfully")
            Response.Redirect("~/login.aspx")
        Else
            MsgBox("Passwords doesn't match.")
            TextBox1.Text = ""
            login_pass.Text = ""
        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("User") Is Nothing) Then
            MsgBox("Please Login First")
            Response.Redirect("~/Login.aspx")
        End If
    End Sub
End Class
