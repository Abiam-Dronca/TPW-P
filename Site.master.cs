using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : MasterPage
{
    private const string AntiXsrfTokenKey = "__AntiXsrfToken";
    private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
    private string _antiXsrfTokenValue;

    protected void Page_Init(object sender, EventArgs e)
    {
        // The code below helps to protect against XSRF attacks
        var requestCookie = Request.Cookies[AntiXsrfTokenKey];
        Guid requestCookieGuidValue;
        if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
        {
            // Use the Anti-XSRF token from the cookie
            _antiXsrfTokenValue = requestCookie.Value;
            Page.ViewStateUserKey = _antiXsrfTokenValue;
        }
        else
        {
            // Generate a new Anti-XSRF token and save to the cookie
            _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
            Page.ViewStateUserKey = _antiXsrfTokenValue;

            var responseCookie = new HttpCookie(AntiXsrfTokenKey)
            {
                HttpOnly = true,
                Value = _antiXsrfTokenValue
            };
            if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
            {
                responseCookie.Secure = true;
            }
            Response.Cookies.Set(responseCookie);
        }

        Page.PreLoad += master_Page_PreLoad;
    }

    protected void master_Page_PreLoad(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set Anti-XSRF token
            ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
            ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
        }
        else
        {
            // Validate the Anti-XSRF token
            if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
            {
                throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
            }
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Image1.ImageUrl = "~/Images/1.jpg";
            Image2.ImageUrl = "~/Images/2.jpg";
            Image3.ImageUrl = "~/Images/3.jpg";
        }
    }

    protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Context.GetOwinContext().Authentication.SignOut();
    }

    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        //string var = Image2.ImageUrl.ToString();
        //if (var == "~/Images/1.jpg")
        //    Image2.ImageUrl = "~/Images/2.jpg";
        //if (var == "~/Images/2.jpg")
        //    Image2.ImageUrl = "~/Images/3.jpg";
        //if (var == "~/Images/3.jpg")
        //    Image3.ImageUrl = "~/Images/4.jpg";
        //if (var == "~/Images/4.jpg")
        //    Image3.ImageUrl = "~/Images/5.jpg";

        Random random = new Random();
        int i = random.Next(1, 6);
        int j = random.Next(1, 6);
        int k = random.Next(1, 6);
        Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
        Image2.ImageUrl = "~/Images/" + j.ToString() + ".jpg";
        Image3.ImageUrl = "~/Images/" + k.ToString() + ".jpg";
        Label1.Text = DateTime.Now.ToLongTimeString()+" "+DateTime.Now.Day+"/"+DateTime.Now.Month+"/"+DateTime.Now.Year;
    }
}