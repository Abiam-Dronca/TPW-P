using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TPW_P.Startup))]
namespace TPW_P
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
