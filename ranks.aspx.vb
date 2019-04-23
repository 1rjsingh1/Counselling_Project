
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
        cmd.CommandText = "insertranks"
        If (Session("User") Is Nothing) Then
            MsgBox("In-Accessible")
            Response.Redirect("~/login.aspx")
        End If
        cmd.Parameters.Add("@roll", SqlDbType.Int).Value = Session.Item("User")
        cmd.Parameters.Add("@orankm", SqlDbType.Int).Value = Int(TextBox1.Text())
        Dim i As Int32
        If (TextBox2.Text = String.Empty) Then
            cmd.Parameters.Add("@scrankm", SqlDbType.Int).Value = DBNull.Value
        Else
            i = Convert.ToInt32((TextBox2.Text))
            cmd.Parameters.Add("@scrankm", SqlDbType.Int).Value = i
        End If



        If (TextBox3.Text() = String.Empty) Then
            cmd.Parameters.Add("@strankm", SqlDbType.Int).Value = DBNull.Value

        Else
            i = Convert.ToInt32(TextBox3.Text())
            cmd.Parameters.Add("@strankm", SqlDbType.Int).Value = i
        End If





        If (TextBox5.Text() = String.Empty) Then
            cmd.Parameters.Add("@orankad", SqlDbType.Int).Value = DBNull.Value
        Else
            i = Convert.ToInt32(TextBox5.Text())
            cmd.Parameters.Add("@orankad", SqlDbType.Int).Value = i
        End If




        If (TextBox6.Text() = String.Empty) Then
            cmd.Parameters.Add("@scrankad", SqlDbType.Int).Value = DBNull.Value
        Else
            i = Convert.ToInt32(TextBox6.Text())
            cmd.Parameters.Add("@scrankad", SqlDbType.Int).Value = i
        End If





        If (TextBox10.Text() = String.Empty) Then
            cmd.Parameters.Add("@strankad", SqlDbType.Int).Value = DBNull.Value
        Else
            i = Convert.ToInt32(TextBox10.Text())
            cmd.Parameters.Add("@strankad", SqlDbType.Int).Value = i
        End If



        cmd.ExecuteNonQuery()

        MsgBox("Registered Successfully")
        Response.Redirect("~/Login.aspx")







    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection
        con.ConnectionString = ("Data Source=LAPTOP-3OSSUTQ9;Initial Catalog=PROJECT;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "checkrank"
        cmd.Parameters.Clear()
        If (Session("User") Is Nothing) Then
            MsgBox("Please Login First")
            Response.Redirect("~/Login.aspx")
        Else


            cmd.Parameters.Add("@rollno", SqlDbType.Int).Value = Session("User")
            cmd.Parameters.Add("@coun", SqlDbType.Int).Direction = ParameterDirection.Output
            cmd.ExecuteNonQuery()
            If (cmd.Parameters("@coun").Value > 0) Then
                Response.Redirect("~/showranks.aspx")
            End If
            cmd.Parameters.Clear()
        End If
    End Sub
End Class
