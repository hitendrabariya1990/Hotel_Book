﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HotelBooking.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="search-box-wrapper">
    <div class="search-box container">
        <ul class="search-tabs clearfix">
            <li class="active"><a href="#hotels-tab" data-toggle="tab">HOTELS</a></li>
        </ul>
        <div class="visible-mobile">
            <ul id="mobile-search-tabs" class="search-tabs clearfix">
                <li class="active"><a href="#hotels-tab">HOTELS</a></li>
            </ul>
        </div>

        <div class="search-tab-content">
            <div class="tab-pane fade active in" id="hotels-tab">
                <div>
                    <div class="row">
                        <div class="form-group col-sm-2 col-md-3">
                            <h4 class="title">Select </h4>
                            <label>Country</label>
                         <%--   <div class="selector">--%>
                                <select id="ddlCountry" onchange="GetCity()">
                                </select>
                            <%--</div>--%>
                            </div>
                        <div class="form-group col-sm-6 col-md-3">
                            <h4 class="title">Where</h4>
                            <label>Your Destination</label>
                           
                            
                                <select id="ddlcity" class="selectpicker" data-live-search="true"></select>
                            
                        </div>
                        <div class="form-group col-sm-6 col-md-4">
                            <h4 class="title">When</h4>
                            <div class="row">
                                <div class="col-xs-6">
                                    <label>Check In</label>
                                    <div class="datepicker-wrap">
                                        <input type="text" class="input-text full-width" id="CheckInDate" placeholder="mm/dd/yy" />
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <label>Check Out</label>
                                    <div class="datepicker-wrap">
                                        <input type="text" class="input-text full-width" id="CheckOutDate" placeholder="mm/dd/yy" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group col-sm-6 col-md-3">
                            <h4 class="title">Person(<a id="clicks">0</a>)</h4>
                            <div class="row">
                                <div class="col-xs-4">
                                    <button type="button" onClick="onClick()">+</button>
                                    <button type="button" onClick="onClick_Minus()">-</button>
                                    </div>
                                    <div class="col-xs-4">
                <%--<label>Rooms</label>--%>
                <%--<div class="selector">
                    <select class="full-width">
                        <option value="1">01</option>
                        <option value="2">02</option>
                        <option value="3">03</option>
                        <option value="4">04</option>
                    </select>
                </div>--%>
            </div>
                                    <div class="col-xs-4">
                                        <h3 style="margin-top:-36%">Rooms</h3>
                                        <div class="selector">
                                            <span    class="full-width" id="Adult" style="padding-top:12px!important">
                                                
                                            </span>
                                        </div>
                                    </div>
                                    
                                </div>
                        </div>

                        <div class="form-group col-sm-6 col-md-2 fixheight" style="padding-top:16px!important">
                            <label class="hidden-xs">&nbsp;</label>
                            <button  class="full-width icon-check animated" data-animation-type="bounce" data-animation-duration="1" onclick="GetHotelSearchResult()">SEARCH NOW</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <h2>Recommended Hotels</h2>
        <div class="block image-carousel style2 flexslider" data-animation="slide" data-item-width="270" data-item-margin="30">
            <ul class="slides image-box listing-style2">
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img src="http://placehold.it/270x160" alt="" width="270" height="160" /></a>
                        </figure>
                        <div class="details">
                            <a title="View all" href="hotel-detailed.html" class="pull-right button uppercase">select</a>
                            <h4 class="box-title">Gran Canaria</h4>
                            <label class="price-wrapper">
                                <span class="price-per-unit">$322</span>avg/night
                            </label>
                        </div>
                    </article>
                </li>
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img src="http://placehold.it/270x160" alt="" width="270" height="160" /></a>
                        </figure>
                        <div class="details">
                            <a title="View all" href="hotel-detailed.html" class="pull-right button uppercase">select</a>
                            <h4 class="box-title">Hotel Hilton</h4>
                            <label class="price-wrapper">
                                <span class="price-per-unit">$620</span>avg/night
                            </label>
                        </div>
                    </article>
                </li>
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img src="http://placehold.it/270x160" alt="" width="270" height="160" /></a>
                        </figure>
                        <div class="details">
                            <a title="View all" href="hotel-detailed.html" class="pull-right button uppercase">select</a>
                            <h4 class="box-title">Roosevelt Hotel</h4>
                            <label class="price-wrapper">
                                <span class="price-per-unit">$170</span>avg/night
                            </label>
                        </div>
                    </article>
                </li>
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img src="http://placehold.it/270x160" alt="" width="270" height="160" /></a>
                        </figure>
                        <div class="details">
                            <a title="View all" href="hotel-detailed.html" class="pull-right button uppercase">select</a>
                            <h4 class="box-title">Forte Do Vale</h4>
                            <label class="price-wrapper">
                                <span class="price-per-unit">$120</span>avg/night
                            </label>
                        </div>
                    </article>
                </li>
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img src="http://placehold.it/270x160" alt="" width="270" height="160" /></a>
                        </figure>
                        <div class="details">
                            <a title="View all" href="hotel-detailed.html" class="pull-right button uppercase">select</a>
                            <h4 class="box-title">Gran Canaria</h4>
                            <label class="price-wrapper">
                                <span class="price-per-unit">$322</span>avg/night
                            </label>
                        </div>
                    </article>
                </li>
            </ul>
        </div>

        <div class="block row">
            <div class="col-md-6">
                <h2>Hot Hotel Details</h2>
                <div class="tab-container style1 box">
                    <ul class="tabs">
                        <li class="active"><a href="#hot-hotel-popular" data-toggle="tab">Popular</a></li>
                        <li><a href="#hot-hotel-lasvegas" data-toggle="tab">Las Vegas</a></li>
                        <li><a href="#hot-hotel-miami" data-toggle="tab">Miami</a></li>
                        <li><a href="#hot-hotel-sanfrancisco" data-toggle="tab">San Francisco</a></li>
                        <li><a href="#hot-hotel-hongkong" data-toggle="tab">Hong Kong</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="hot-hotel-popular">
                            <div class="row">
                                <div class="col-xs-2">
                                    <a href="#" class="badge-container"><span class="badge-content">save 23%</span><img class="full-width" src="http://placehold.it/63x63" alt="" width="63" height="63" /></a>
                                </div>
                                <div class="col-xs-8">
                                    <h5 class="box-title">Warwick Hotel<small>New york, usa</small></h5>
                                    <p class="no-margin">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                                </div>
                                <div class="col-xs-2">
                                    <span class="price"><small>avg/night</small>$115</span>
                                    <br /><br />
                                    <a class="button green-bg pull-right" href="hotel-detailed.html">SELECT</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2">
                                    <a href="#" class="badge-container"><span class="badge-content">save 23%</span><img class="full-width" src="http://placehold.it/63x63" alt="" width="63" height="63" /></a>
                                </div>
                                <div class="col-xs-8">
                                    <h5 class="box-title">Warwick Hotel<small>New york, usa</small></h5>
                                    <p class="no-margin">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                                </div>
                                <div class="col-xs-2">
                                    <span class="price"><small>avg/night</small>$115</span>
                                    <br /><br />
                                    <a class="button green-bg pull-right" href="hotel-detailed.html">SELECT</a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="hot-hotel-lasvegas">

                        </div>
                        <div class="tab-pane fade" id="hot-hotel-miami">

                        </div>
                        <div class="tab-pane fade" id="hot-hotel-sanfrancisco">

                        </div>
                        <div class="tab-pane fade" id="hot-hotel-hongkong">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h2>What Travelers Say?</h2>
                <div class="testimonial style1 box">
                    <ul class="slides ">
                        <li>
                            <p class="description">This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize your entire trip using their extremely fast website and up to date listings. I’m super excited about my next trip to Paris.</p>
                            <div class="author clearfix">
                                <a href="#"><img src="http://placehold.it/270x270" alt="" width="74" height="74" /></a>
                                <h5 class="name">Jessica Brown<small>guest</small></h5>
                            </div>
                        </li>
                        <li>
                            <p class="description">This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize your entire trip using their extremely fast website and up to date listings. I’m super excited about my next trip to Paris.</p>
                            <div class="author clearfix">
                                <a href="#"><img src="http://placehold.it/270x270" alt="" width="74" height="74" /></a>
                                <h5 class="name">Lisa Kimberly<small>guest</small></h5>
                            </div>
                        </li>
                        <li>
                            <p class="description">This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize your entire trip using their extremely fast website and up to date listings. I’m super excited about my next trip to Paris.</p>
                            <div class="author clearfix">
                                <a href="#"><img src="http://placehold.it/270x270" alt="" width="74" height="74" /></a>
                                <h5 class="name">Jessica Brown<small>guest</small></h5>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <h2>Travelers Choice of Hotels</h2>
        <div class="image-carousel style2 flexslider" data-animation="slide" data-item-width="270" data-item-margin="30">
            <ul class="slides image-box hotel listing-style1">
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img width="270" height="160" alt="" src="http://placehold.it/270x160"></a>
                        </figure>
                        <div class="details">
                            <span class="price">
                                <small>avg/night</small>
                                $360
                            </span>
                            <h4 class="box-title">Hotel Hilton<small>Paris france</small></h4>
                            <div class="feedback">
                                <div data-placement="bottom" data-toggle="tooltip" class="five-stars-container" title="4 stars"><span style="width: 80%;" class="five-stars"></span></div>
                                <span class="review">270 reviews</span>
                            </div>
                            <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                            <div class="action">
                                <a class="button btn-small" href="hotel-detailed.html">SELECT</a>
                                <a class="button btn-small yellow popup-map" href="#" data-box="48.856614, 2.352222">VIEW ON MAP</a>
                            </div>
                        </div>
                    </article>
                </li>
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img width="270" height="160" alt="" src="http://placehold.it/270x160"></a>
                        </figure>
                        <div class="details">
                            <span class="price"><small>avg/night</small>$188</span>
                            <h4 class="box-title">Forte Do Vale<small>Albufeira</small></h4>
                            <div class="feedback">
                                <div data-placement="bottom" data-toggle="tooltip" class="five-stars-container" title="4 stars"><span style="width: 80%;" class="five-stars"></span></div>
                                <span class="review">170 reviews</span>
                            </div>
                            <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                            <div class="action">
                                <a class="button btn-small" href="hotel-detailed.html">SELECT</a>
                                <a class="button btn-small yellow popup-map" href="#" data-box="37.089072, -8.247880">VIEW ON MAP</a>
                            </div>
                        </div>
                    </article>
                </li>
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img width="270" height="160" alt="" src="http://placehold.it/270x160"></a>
                        </figure>
                        <div class="details">
                            <span class="price"><small>avg/night</small>$322</span>
                            <h4 class="box-title">Gran Canaria<small>spain</small></h4>
                            <div class="feedback">
                                <div data-placement="bottom" data-toggle="tooltip" class="five-stars-container" title="4 stars"><span style="width: 80%;" class="five-stars"></span></div>
                                <span class="review">485 reviews</span>
                            </div>
                            <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                            <div class="action">
                                <a class="button btn-small" href="hotel-detailed.html">SELECT</a>
                                <a class="button btn-small yellow popup-map" href="#" data-box="40.463667, -3.749220">VIEW ON MAP</a>
                            </div>
                        </div>
                    </article>
                </li>
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img width="270" height="160" alt="" src="http://placehold.it/270x160"></a>
                        </figure>
                        <div class="details">
                            <span class="price"><small>avg/night</small>$170</span>
                            <h4 class="box-title">Roosevelt Hotel<small>New york</small></h4>
                            <div class="feedback">
                                <div data-placement="bottom" data-toggle="tooltip" class="five-stars-container" title="4 stars"><span style="width: 80%;" class="five-stars"></span></div>
                                <span class="review">75 reviews</span>
                            </div>
                            <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                            <div class="action">
                                <a class="button btn-small" href="hotel-detailed.html">SELECT</a>
                                <a class="button btn-small yellow popup-map" href="#" data-box="40.705631, -73.978003">VIEW ON MAP</a>
                            </div>
                        </div>
                    </article>
                </li>
                <li>
                    <article class="box">
                        <figure>
                            <a href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img width="270" height="160" alt="" src="http://placehold.it/270x160"></a>
                        </figure>
                        <div class="details">
                            <span class="price">
                                <small>avg/night</small>
                                $360
                            </span>
                            <h4 class="box-title">Hotel Hilton<small>Paris france</small></h4>
                            <div class="feedback">
                                <div data-placement="bottom" data-toggle="tooltip" class="five-stars-container" title="4 stars"><span style="width: 80%;" class="five-stars"></span></div>
                                <span class="review">270 reviews</span>
                            </div>
                            <p class="description">Nunc cursus libero purus ac congue arcu cursus ut sed vitae pulvinar massa idporta nequetiam.</p>
                            <div class="action">
                                <a class="button btn-small" href="hotel-detailed.html">SELECT</a>
                                <a class="button btn-small yellow popup-map" href="#" data-box="48.856614, 2.352222">VIEW ON MAP</a>
                            </div>
                        </div>
                    </article>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="global-map-area promo-box no-margin parallax" data-stellar-background-ratio="0.5">
    <div class="container">
        <div class="content-section description pull-right col-sm-9">
            <div class="table-wrapper hidden-table-sm">
                <div class="table-cell">
                    <h2 class="m-title animated" data-animation-type="fadeInDown">
                        Tell us where you would like to go.<br /><em>12,000+ Hotel and Resorts Available!</em>
                    </h2>
                </div>
                <div class="table-cell action-section col-md-4 no-float">
                    <div>
                        <div class="row">
                            <div class="col-xs-6 col-md-12">
                                <input type="text" class="input-text input-large full-width" value="" placeholder="Enter destination or hotel name" />
                            </div>
                            <div class="col-xs-6 col-md-12">
                                <button class="full-width btn-large animated" data-animation-type="fadeInUp" data-animation-delay="1">search hotels</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="image-container col-sm-4">
            <img src="http://placehold.it/342x258" alt="" width="342" height="258" class="animated" data-animation-type="fadeInUp" data-animation-duration="2" />
        </div>
    </div>
</div>
    <script type="text/html" id="ddlcountry_temp">
    <option value="${Countrycode}">${Country}</option>
    </script>
<script type="text/javascript">
    var clicks = 0;
    var a = 1;
    var b;
    function onClick() {
        debugger;
        clicks += 1;
        counter = 3;
        document.getElementById("clicks").innerHTML = clicks;
        $("#Adult").html(cal_room(clicks));

    };
    function onClick_Minus(){
        clicks -= 1;
        if (clicks < 0) {
            clicks = 0;
        }
        document.getElementById("clicks").innerHTML = clicks;
    }
    function cal_room(obj) {
    //debugger;
    var hold = (parseInt(obj) / 3);
    if (isInt(hold)) {
        return hold;
    }
    else if (isFloat(hold)) {
        return (parseInt(hold) + 1);
    }
    else {
        return "sorry";
    }
}
function isInt(n) {
    return Number(n) === n && n % 1 === 0;
}

function isFloat(n) {
    return Number(n) === n && n % 1 !== 0;
}
</script>

<script type="text/html" id="ddlcity_temp">
    <option value="${Cityid}" data-tokens="${Destination}">${Destination}</option>
</script>
   

<script type="text/javascript">
    $(document).ready(function () {
        debugger;
        BindCountry();
    });
    function BindCountry() {
        var GlobalPath = "<%= Application["path"] %>";
        var xmlRequest = [];
        xmlRequest.push($.ajax(
              {
                  type: "POST",
                  url: GlobalPath + "country.asmx/GetCountry",
                  contentType: "application/json; charset=utf-8",
                  dataType: "json",
                  async: true,
                  cache: false,
                  success: onsuccesscountry,
                  error: function (xhr, ajaxOptions, thrownError) {
                      //alert(xhr.responseText + "error");
                      //alert(thrownError);
                  }
              }));

            
    }
    function onsuccesscountry(data) {
        debugger;
        $("#ddlCountry").empty();
        $("#ddlCountry").append($("#ddlcountry_temp").tmpl(data.d));
    }
    function GetCity() {
        var country = $('#ddlCountry :selected').val();
        var GlobalPath = "<%= Application["path"] %>";
        var xmlRequest = [];
        xmlRequest.push($.ajax(
              {
                  type: "POST",
                  url: GlobalPath + "country.asmx/GetAllCity",
                  contentType: "application/json; charset=utf-8",
                  data: JSON.stringify(
                    {
                        countryName: country
                    }),
                  dataType: "json",
                  async: true,
                  cache: false,
                  success: onsuccessCity,
                  error: function (xhr, ajaxOptions, thrownError) {
                      //alert(xhr.responseText + "error");
                      //alert(thrownError);
                  }
              }));
         }
    function onsuccessCity(data) {
        $("#ddlcity").empty();
        $("#ddlcity").append($("#ddlcity_temp").tmpl(data.d));
    }

    function GetHotelSearchResult() {
        debugger;
        var textVALUE = "";
        //for (i = 0; i < parseInt($('#Adult').text()) ; i++) {
        //    textVALUE = textVALUE + "{NoOfAdults: 1,NoOfChild: 1,ChildAge: [5]}";
        //}
        var dataReq = {
            "BookingMode": 5,
            "CheckInDate": "05/10/2016",
            "NoOfNights": 3,
            "CountryCode": "US",
            "CityId": "1012",
            "PreferredCurrency": "INR",
            "GuestNationality": "American",
            "NoOfRooms": 1,
            "MaxRating": 5,
            "MinRating": 2,
            "EndUserIp": "192.168.0.100",
            "TokenId": "ae8d15b7-d06e-4c50-8eca-904e6cc42d1f",
            "RoomGuests": [
              {
                  "NoOfAdults": 1,
                  "NoOfChild": 1,
                  "ChildAge": [5]
              }],
            "OrderBy": 13,
            "SortBy": 14,
            "ResultCount": 15,
            "MemberMobileNo": "7405007979",
            "MemberMobilePin": "1021"
        }
       
        localStorage.setItem("Htreq", dataReq);
        $.ajax({
            url: '@Url.Action("HotelSearchListView", "Hotel")',
            type: 'POST',
            dataType: 'Json',
            data: JSON.stringify(
                 dataReq
                ),

            cache: false,
            success: onsuccessHotelSearchResult,
            //contentType: "application/Json; charset=utf-8",
            headers: {
                'Content-Type': 'application/json', 'x-username': 'BIS199', 'x-password': '123456'
            },
            error: function (xhr, error) {
                console.debug(xhr); console.debug(error);
            },

        });
       // $.get('http://localhost:51724/Hotel/HotelSearchListView');
        //window.location.assign("http://localhost:51724/Hotel/HotelSearchListView");
    }
        //var dataReq = {
        //    BookingMode: 1,
        //    CheckInDate: $('#CheckInDate').val(),
        //    NoOfNights: 3,
        //    CountryCode: $('#ddlCountry :selected').val(),
        //    CityId: $('#ddlcity :selected').val(),
        //    PreferredCurrency: "USD",
        //    GuestNationality: "American",
        //    NoOfRooms: $('#Adult').text(),
        //    MaxRating: 5,
        //    RoomGuests: [textVALUE],
        //    MinRating: 1,
        //    OrderBy: 13,
        //    SortBy: 14,
        //    ResultCount: 15,
        //    EndUserIp: "192.168.0.100",
        //    TokenId: "ae8d15b7-d06e-4c50-8eca-904e6cc42d1f",                       
        //    MemberMobileNo: "7405007979",
        //    MemberMobilePin: "1021"
        //};
        
    
    function onsuccessHotelSearchResult(data) {
        debugger;
        localStorage.setItem("Htreq", dataReq);
        window.location = "Hotel/HotelSearchListView";
    }
    
</script>
</asp:Content>

