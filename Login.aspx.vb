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
            cmd.CommandText = "LoginVerify"
            cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = Int(TextBox1.Text())
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = (login_pass.Text())
            cmd.Parameters.Add("@check", SqlDbType.Int).Direction = ParameterDirection.Output
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 22).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            Dim i As Int16
            i = cmd.Parameters("@check").Value
            If (i = 1) Then
                Session.Add("UserName", cmd.Parameters("@name").Value)
                Session.Add("User", TextBox1.Text())

                Response.Redirect("~/Home.aspx")
            Else
                MsgBox("Invalid Details")

            End If



    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("User") Is Nothing) Then
        Else

            Session.Remove("User")
            Session.Abandon()
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        RequiredFieldValidator1.Enabled = False


        Response.Redirect("~/Regiter.aspx")
    End Sub
End Class
