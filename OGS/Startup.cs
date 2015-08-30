using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OGS.Startup))]
namespace OGS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
