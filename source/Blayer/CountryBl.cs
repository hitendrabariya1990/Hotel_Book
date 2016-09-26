using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dlayer;
using Olayer;
using HotelBooking.Olayer;

namespace Blayer
{
    public class CountryBl
    {
        public List<BindCountryResponse> GetCountry()
        {
            List<BindCountryResponse> objCounrty = new List<BindCountryResponse>();
            ContryList_Db objCountrydl = new ContryList_Db();
            objCounrty = objCountrydl.GetCountryList();
            return objCounrty;
        }
        public List<BindCityResponse> GetAllCity(string countryName)
        {
            List<BindCityResponse> objcity = new List<BindCityResponse>();
            ContryList_Db objCountrydl = new ContryList_Db();
            objcity = objCountrydl.GetAllCity(countryName);
            return objcity;
        }
    }
}
