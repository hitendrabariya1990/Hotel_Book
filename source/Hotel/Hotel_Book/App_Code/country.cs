using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using Blayer;
using Olayer;
using HotelBooking.Olayer;
using Newtonsoft.Json;
/// <summary>
/// Summary description for country
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class country : System.Web.Services.WebService
{
    //public country()
    //{

    //    //Uncomment the following line if using designed components 
    //    //InitializeComponent(); 
    //}

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public List<BindCountryResponse> GetCountry()
    {
        List<BindCountryResponse> objGetCountry = new List<BindCountryResponse>();
        CountryBl objcon = new CountryBl();
        objGetCountry = objcon.GetCountry();
        return objGetCountry;

    }
    [WebMethod]
    public List<BindCityResponse> GetAllCity(string countryName)
    {
        List<BindCityResponse> objgetcity = new List<BindCityResponse>();
        CountryBl objcon = new CountryBl();
        objgetcity = objcon.GetAllCity(countryName);
        return objgetcity;
    }
}