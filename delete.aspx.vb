
Partial Class Files_delete
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session.Abandon()
        Response.Redirect("Login.aspx")

    End Sub
End Class
