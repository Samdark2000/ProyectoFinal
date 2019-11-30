using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RecursosHumanos.Startup))]
namespace RecursosHumanos
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
