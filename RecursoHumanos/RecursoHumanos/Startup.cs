using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RecursoHumanos.Startup))]
namespace RecursoHumanos
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
