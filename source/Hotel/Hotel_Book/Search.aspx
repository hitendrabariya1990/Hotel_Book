﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HotelBooking.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="content" ng-app="myHotelSearchResult">
    <div class="container">
        <div id="main">
            <div class="row">
                <div class="col-sm-4 col-md-3">
                    <button></button>

                    <h4 class="search-results-title"><i class="soap-icon-search"></i><b>1,984</b> results found.</h4>
                    <div class="toggle-container filters-container">
                        <div class="panel style1 arrow-right">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#price-filter" class="collapsed">Price</a>
                            </h4>
                            <div id="price-filter" class="panel-collapse collapse">
                                <div class="panel-content">
                                    <div id="price-range"></div>
                                    <br />
                                    <span class="min-price-label pull-left"></span>
                                    <span class="max-price-label pull-right"></span>
                                    <div class="clearer"></div>
                                </div><!-- end content -->
                            </div>
                        </div>

                        <div class="panel style1 arrow-right">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#rating-filter" class="collapsed">User Rating</a>
                            </h4>
                            <div id="rating-filter" class="panel-collapse collapse filters-container">
                                <div class="panel-content">
                                    <div id="rating" class="five-stars-container editable-rating"></div>
                                    <br />
                                    <small>2458 REVIEWS</small>
                                </div>
                            </div>
                        </div>

                        <div class="panel style1 arrow-right">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#accomodation-type-filter" class="collapsed">Accomodation Type</a>
                            </h4>
                            <div id="accomodation-type-filter" class="panel-collapse collapse">
                                <div class="panel-content">
                                    <ul class="check-square filters-option">
                                        <li><a href="#">All<small>(722)</small></a></li>
                                        <li><a href="#">Hotel<small>(982)</small></a></li>
                                        <li><a href="#">Resort<small>(127)</small></a></li>
                                        <li class="active"><a href="#">Bed &amp; Breakfast<small>(222)</small></a></li>
                                        <li><a href="#">Condo<small>(158)</small></a></li>
                                        <li><a href="#">Residence<small>(439)</small></a></li>
                                        <li><a href="#">Guest House<small>(52)</small></a></li>
                                    </ul>
                                    <a class="button btn-mini">MORE</a>
                                </div>
                            </div>
                        </div>

                        <div class="panel style1 arrow-right">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#amenities-filter" class="collapsed">Amenities</a>
                            </h4>
                            <div id="amenities-filter" class="panel-collapse collapse">
                                <div class="panel-content">
                                    <ul class="check-square filters-option">
                                        <li><a href="#">Bathroom<small>(722)</small></a></li>
                                        <li><a href="#">Cable tv<small>(982)</small></a></li>
                                        <li class="active"><a href="#">air conditioning<small>(127)</small></a></li>
                                        <li class="active"><a href="#">mini bar<small>(222)</small></a></li>
                                        <li><a href="#">wi - fi<small>(158)</small></a></li>
                                        <li><a href="#">pets allowed<small>(439)</small></a></li>
                                        <li><a href="#">room service<small>(52)</small></a></li>
                                    </ul>
                                    <a class="button btn-mini">MORE</a>
                                </div>
                            </div>
                        </div>

                        <div class="panel style1 arrow-right">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#language-filter" class="collapsed">Host Language</a>
                            </h4>
                            <div id="language-filter" class="panel-collapse collapse">
                                <div class="panel-content">
                                    <ul class="check-square filters-option">
                                        <li><a href="#">English<small>(722)</small></a></li>
                                        <li><a href="#">Español<small>(982)</small></a></li>
                                        <li class="active"><a href="#">Português<small>(127)</small></a></li>
                                        <li class="active"><a href="#">Français<small>(222)</small></a></li>
                                        <li><a href="#">Suomi<small>(158)</small></a></li>
                                        <li><a href="#">Italiano<small>(439)</small></a></li>
                                        <li><a href="#">Sign Language<small>(52)</small></a></li>
                                    </ul>
                                    <a class="button btn-mini">MORE</a>
                                </div>
                            </div>
                        </div>

                        <div class="panel style1 arrow-right">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" href="#modify-search-panel" class="collapsed">Modify Search</a>
                            </h4>
                            <div id="modify-search-panel" class="panel-collapse collapse">
                                <div class="panel-content">
                                    <form method="post">
                                        <div class="form-group">
                                            <label>destination</label>
                                            <input type="text" class="input-text full-width" placeholder="" value="Paris" />
                                        </div>
                                        <div class="form-group">
                                            <label>check in</label>
                                            <div class="datepicker-wrap">
                                                <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>check out</label>
                                            <div class="datepicker-wrap">
                                                <input type="text" class="input-text full-width" placeholder="mm/dd/yy" />
                                            </div>
                                        </div>
                                        <br />
                                        <button class="btn-medium icon-check uppercase full-width">search again</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-md-9">
                    <div class="sort-by-section clearfix">
                        <h4 class="sort-by-title block-sm">Sort results by:</h4>
                        <ul class="sort-bar clearfix block-sm">
                            <li class="sort-by-name"><a class="sort-by-container" href="#"><span>name</span></a></li>
                            <li class="sort-by-price"><a class="sort-by-container" href="#"><span>price</span></a></li>
                            <li class="clearer visible-sms"></li>
                            <li class="sort-by-rating active"><a class="sort-by-container" href="#"><span>rating</span></a></li>
                            <li class="sort-by-popularity"><a class="sort-by-container" href="#"><span>popularity</span></a></li>
                        </ul>

                        <ul class="swap-tiles clearfix block-sm">
                            <li class="swap-list active">
                                <a href="hotel-list-view.html"><i class="soap-icon-list"></i></a>
                            </li>
                            <li class="swap-grid">
                                <a href="hotel-grid-view.html"><i class="soap-icon-grid"></i></a>
                            </li>
                            <li class="swap-block">
                                <a href="hotel-block-view.html"><i class="soap-icon-block"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div id="searchHotel">

                    </div>
                    
                    <a href="#" class="uppercase full-width button btn-large">load more listing</a>
                </div>
            </div>
        </div>
    </div>
</section>
    <script type="text/html" id="searchresult">
    <div class="hotel-list listing-style3 hotel">
        <article class="box">
            <%--<figure class="col-sm-5 col-md-4">
                <a title="" href="ajax/slideshow-popup.html" class="hover-effect popup-gallery"><img width="270" height="160" alt="" src="${{HotelPicture}}"></a>
            </figure>--%>
            <div class="details col-sm-7 col-md-8">
                <div>
                    <div>
                        <h4 class="box-title">${HotelName}<small><i class="soap-icon-departure yellow-color"></i>${HotelAddress}</small></h4>
                        <div class="amenities">
                            <i class="soap-icon-wifi circle"></i>
                            <i class="soap-icon-fitnessfacility circle"></i>
                            <i class="soap-icon-fork circle"></i>
                            <i class="soap-icon-television circle"></i>
                        </div>
                    </div>
                    <div>
                        <div class="five-stars-container">
                            <span class="five-stars" style="width:"></span>
                        </div>
                        <span class="review">270 reviews</span>
                    </div>
                </div>
                <div>
                    <p>${HotelDescription}</p>
                    <div>
                        <span class="price"><small>AVG/NIGHT</small>${Price.OfferedPrice}</span>
                        <a class="button btn-small full-width text-center" title="" href="hotel-detailed.html">SELECT</a>
                    </div>
                </div>
            </div>
        </article>

    </div>
</script>
    <script type="text/javascript">
    $(document).ready(function () {
        GetHotelSearchResult();
    });
    
</script>
    <script type="text/javascript">
    


    function GetHotelSearchResult() {
        debugger;
        var textVALUE = "";
        //for (i = 0; i < parseInt($('#Adult').text()) ; i++) {
        //    textVALUE = textVALUE + "{NoOfAdults: 1,NoOfChild: 1,ChildAge: [5]}";
        //}
        
      var  hotreq = {
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
       var GlobalPath = "<%= Application["path"] %>";
        var xmlRequest = [];
        xmlRequest.push($.ajax(
              {
                  type: "POST",
                  url: GlobalPath + "search.asmx/GetSearchResult",
                  contentType: "application/json; charset=utf-8",
                  data: JSON.stringify(
                    {
                        hotreq
                    }),
                  dataType: "json",
                  async: true,
                  cache: false,
                  success: onsuccessResult,
                  error: function (xhr, ajaxOptions, thrownError) {
                      //alert(xhr.responseText + "error");
                      //alert(thrownError);
                  }
              }));
    }
        function onsuccessResult(data) {
            debugger;
            $("#searchHotel").empty();
            $("#searchHotel").append($("#searchresult").tmpl(data.d[0].HotelResults));
    }
</script>
</asp:Content>

