using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PetStoreClass.Startup))]
namespace PetStoreClass
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
