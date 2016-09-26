using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Olayer;
using Dapper;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using HotelBooking.Olayer;

namespace Dlayer
{
    public class ContryList_Db
    {
        private readonly IDbConnection _db;
        SqlConnection con;
        public ContryList_Db()
        {
            _db = new SqlConnection("Data Source=IDCSQL3.znetlive.com,1234;Initial Catalog=Hotel_Booking;Persist Security Info=True;User ID=Hotel_Booking;Password=Hotel_Booking@123");
        }
        public List<BindCountryResponse> GetCountryList()
        {
            try
            {
                List<BindCountryResponse> objcountry = new List<BindCountryResponse>();
                objcountry = _db.Query<BindCountryResponse>("select [Country],[Countrycode] From HotelCityCode Group By [Country],[Countrycode] order by [Country] asc").ToList();
                return objcountry.ToList();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public List<BindCityResponse> GetAllCity(string countryName)
        {
            try
            {
                List<BindCityResponse> objcity = new List<BindCityResponse>();
                objcity=_db.Query<BindCityResponse>("Select [Cityid],[Destination] From HotelCityCode  where [Countrycode]='" + countryName + "' order by [Destination] asc").ToList();
                return objcity.ToList();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}