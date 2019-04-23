Imports System
Imports System.Data.SqlClient
Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Collections
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection
        con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "personalshow"
        cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = Session.Item("User")
        cmd.Parameters.Add("@name", SqlDbType.VarChar, 22).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@fname", SqlDbType.VarChar, 22).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@mobile", SqlDbType.BigInt).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@dob", SqlDbType.Date).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@orank", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@scrank", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@strank", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@orankad", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@scrankad", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@strankad", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.ExecuteNonQuery()

        Label2.Text = Session.Item("User")
        Label3.Text = cmd.Parameters("@name").Value
        Label4.Text = cmd.Parameters("@fname").Value
        Label5.Text = cmd.Parameters("@mobile").Value
        Label6.Text = cmd.Parameters("@dob").Value
        Label7.Text = cmd.Parameters("@orank").Value
        If (IsDBNull(cmd.Parameters("@scrank").Value)) Then
            Label8.Text = "Not Applicable"
        Else
            Label8.Text = cmd.Parameters("@scrank").Value

        End If
        If (IsDBNull(cmd.Parameters("@strank").Value)) Then
            Label9.Text = "Not Applicable"
        Else
            Label9.Text = cmd.Parameters("@strank").Value

        End If
        If (IsDBNull(cmd.Parameters("@orankad").Value)) Then
            Label10.Text = "Not Applicable"
        Else
            Label10.Text = cmd.Parameters("@orankad").Value

        End If
        If (IsDBNull(cmd.Parameters("@scrankad").Value)) Then
            Label11.Text = "Not Applicable"
        Else
            Label11.Text = cmd.Parameters("@scrankad").Value

        End If
        If (IsDBNull(cmd.Parameters("@strankad").Value)) Then
            Label12.Text = "Not Applicable"
        Else
            Label12.Text = cmd.Parameters("@strankad").Value

        End If


        Dim con1 As New SqlConnection
        con1.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
        con1.Open()


        Dim cmd1 As New SqlCommand
        cmd1.Connection = con1
        cmd1.CommandType = CommandType.StoredProcedure
        cmd1.CommandText = "showimage"
        cmd1.Parameters.Add("@roll", SqlDbType.Int).Value = Session.Item("User")
        Dim bytes As Byte() = CType(cmd1.ExecuteScalar(), Byte())

        If (Not (bytes Is Nothing)) Then

            Dim s As String = Convert.ToBase64String(bytes)

            Image2.ImageUrl = "data:Image/png;base64," & s
            HyperLink9.Visible = False

        Else
            Image2.ImageUrl = "~/dummy-profile.png"


        End If
        con.Close()







    End Sub
End Class
