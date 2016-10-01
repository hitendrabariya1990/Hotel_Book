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
using System.Collections;

/// <summary>
/// Summary description for search
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class search : System.Web.Services.WebService
{

    public search()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }
    [WebMethod]
    public List<HotelSearchResponse> GetSearchResult(HotelSearchRequest hotreq)
    {

        var baseAddress = "http://api.jbspl.com/Staging/api/UpdatedHotel/GetHotelResult";

        var http = (HttpWebRequest)WebRequest.Create(new Uri(baseAddress));
        http.Accept = "application/json";
        http.ContentType = "application/json";
        http.Method = "POST";
        http.Headers.Add("x-username", "BIS199");
        http.Headers.Add("x-password", "123456");

        string parsedContent = new JavaScriptSerializer().Serialize(hotreq);
        ASCIIEncoding encoding = new ASCIIEncoding();
        Byte[] bytes = encoding.GetBytes(parsedContent);

        Stream newStream = http.GetRequestStream();
        newStream.Write(bytes, 0, bytes.Length);
        newStream.Close();

        var response = http.GetResponse();

        var stream = response.GetResponseStream();
        var sr = new StreamReader(stream);
        var content = sr.ReadToEnd();

        HotelSearchResponse hotelsearchResp =new  HotelSearchResponse();
        List<HotelSearchResponse> ht = new List<HotelSearchResponse>();
        hotelsearchResp = JsonConvert.DeserializeObject<HotelSearchResponse>(content);
        ht.Add(hotelsearchResp);
        return ht.ToList();

    }

}
