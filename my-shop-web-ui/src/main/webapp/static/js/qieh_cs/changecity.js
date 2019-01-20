(function() {
    function makeSelector(id, data, tag) {
        var $selector = $("#" + id);
        var $result = $("#" + id + "-result");
        var $options = $("#" + id + "-box");
        var $arrow = $("#" + id + "-arrow");
        $selector.off("click");
        if (tag) {
            $result.html("城市")
        }
        $options.empty();
        $options.css("max-height", 15 * 30 + "px");
        for (city in data) {
            if (data.hasOwnProperty(city)) {
                $options.append($('<li class="selector-list" data-city="' + data[city] + '">' + city + "</li>"))
            }
        }
        $selector.on("click",
        function(event) {
            event.preventDefault();
            for (var i = 0; i < $(".selector-box").length; i++) {
                if ($(".selector-box")[i] != $options[0]) {
                    $(".selector-box").eq(i).hide()
                }
            }
            $options.toggle();
            $arrow.toggleClass("selector-arrow-up")
        });
        $selector.on("click", ".selector-list",
        function(event) {
            event.preventDefault();
            event.stopPropagation();
            $options.hide();
            $arrow.toggleClass("selector-arrow-up");
            $result.html(event.target.innerHTML);
            if (tag == "city") {
                var address = "";
                if (catepath == "post") {
                    address = "http://wangid.com/" + event.target.dataset["city"].split("|")[1] + "/"
                } else {
                    address = "http://" + event.target.dataset["city"].split("|")[0] + "wangid.com/" + catepath
                }
                window.location.href = address
            } else if (tag == "foreign") {
                var address = "";
                if (event.target.dataset["city"] == "city") {
                    address = "http://wangid.com/"
                } else {
                    address = "http://wangid.com/j-" + event.target.dataset["city"] + "/"
                }
                window.location.href = address
            } else {
                if (event.target.innerHTML == "海外") {
                    makeSelector("selector-city", cityList[event.target.innerHTML], "foreign")
                } else {
                    makeSelector("selector-city", cityList[event.target.innerHTML], "city")
                }
            }
        });
        $("body").eq(0).on("click",
        function(event) {
            if (event.target.className.indexOf("selector") == -1) {
                $options.hide();
                $arrow.removeClass("selector-arrow-up")
            }
        })
    }
    function makeCityList() {
        var $contentBox = $("#content-box");
        var list = ["A", "F", "G", "H", "J", "L", "N", "Q", "S", "X", "Y", "Z", " "];
        for (var i = 0; i < list.length; i++) {
            var $contentLetter = $('<div class="content-letter"><span class="content-letter-panel">' + list[i] + "</span></div>");
            $contentBox.append($contentLetter);
            for (var provinceName in provinceList) {
                if (provinceList[provinceName] == list[i]) {
                    var $contentProvince = $('<div class="content-province"><span class="content-province-triangle"></span><div class="content-province-title">' + provinceName + "</div></div>");
                    var $contentCities = $('<div class="content-cities"></div>');
                    var address = "";
                    for (var cityName in cityList[provinceName]) {
                        if (catepath == "post") {
                            address = "http://wangid.com/" + cityList[provinceName][cityName].split("|")[1] + "/"
                        } else {
                            address = "http://" + cityList[provinceName][cityName].split("|")[0] + "wangid.com/" + catepath
                        }
                        if (provinceName == "海外") {
                            if (cityList[provinceName][cityName].split("|")[0] == "city") {
                                address = "http://wangid.com/"
                            } else {
                                address = "http://wangid.com/j-" + cityList[provinceName][cityName].split("|")[0] + "/"
                            }
                        }
                        $contentCities.append($('<a href="' + address + '" class="content-city">' + cityName + "</a>"))
                    }
                    $contentProvince.append($contentCities);
                    $contentLetter.append($contentProvince)
                }
            }
        }
        if (catepath == "post") {
            $("#hot").append($('<a href="http://wangid.com/" class="hot-city">北京</a><a href="http://wangid.com/2/" class="hot-city">上海</a><a href="http://wangid.com/3/" class="hot-city">广州</a><a href="http://wangid.com/4/" class="hot-city">深圳</a><a href="http://wangid.com/" class="hot-city">成都</a><a href="http://wangid.com/" class="hot-city">杭州</a><a href="http://wangid.com/" class="hot-city">南京</a><a href="http://wangid.com/" class="hot-city">天津</a><a href="http://wangid.com/" class="hot-city">武汉</a><a href="http://wangid.com/" class="hot-city">重庆</a>'))
        } else {
            $("#hot").append($('<a href="http://wangid.com/' + catepath + '" class="hot-city">北京</a><a href="http://wangid.com/' + catepath + '" class="hot-city">上海</a><a href="http://wangid.com/' + catepath + '" class="hot-city">广州</a><a href="http://wangid.com/' + catepath + '" class="hot-city">深圳</a><a href="http://wangid.com/' + catepath + '" class="hot-city">成都</a><a href="http://wangid.com/' + catepath + '" class="hot-city">杭州</a><a href="http://wangid.com/' + catepath + '" class="hot-city">南京</a><a href="http://wangid.com/' + catepath + '" class="hot-city">天津</a><a href="http://wangid.com/' + catepath + '" class="hot-city">武汉</a><a href="http://wangid.com/' + catepath + '" class="hot-city">重庆</a>'))
        }
    }
    var search = window.location.search.replace("?", "").split("&");
    var arg = [];
    window.catepath = "";
    window.searchpath = "";
    var catename = "";
    for (var i = 0; i < search.length; i++) {
        arg[search[i].split("=")[0]] = search[i].split("=")[1]
    }
    for (key in arg) {
        if (key == "catepath" && arg[key] != "") {
            if (arg[key].indexOf(".shtml") > 0) {
                catepath = arg[key]
            } else if (arg[key].indexOf("post") == 0) {
                catepath = "post"
            } else {
                catepath = arg[key] + "/"
            }
            searchpath = arg[key]
        } else if (key == "catename" && arg[key] != "") {
            catename = decodeURI(arg[key])
        } else if (key == "fullpath") {
            window.fullpath = arg[key]
        }
    }
    makeSelector("selector-province", provinceList);
    makeCityList();
    var $panels = $(".content-letter-panel");
    var $letters = $(".content-letter");
    var $provinceTitles = $(".content-province-title");
    var $provinceTriangle = $(".content-province-triangle");
    var $provinces = $(".content-province");
    $provinces.each(function(index, el) {
        $provinceTitles.eq(index).css("height", $(el).css("height"));
        $(el).on("mouseover",
        function(event) {
            $provinceTriangle.eq(index).addClass("content-province-triangle-hover");
            $(el).addClass("content-province-hover")
        });
        $(el).on("mouseout",
        function(event) {
            $provinceTriangle.eq(index).removeClass("content-province-triangle-hover");
            $(el).removeClass("content-province-hover")
        })
    });
    $letters.each(function(index, el) {
        $panels.eq(index).css({
            height: $(el).css("height"),
            "line-height": $(el).css("height")
        });
        $(el).on("mouseover",
        function(event) {
            $panels.eq(index).addClass("content-letter-panle-hover")
        });
        $(el).on("mouseout",
        function(event) {
            $panels.eq(index).removeClass("content-letter-panle-hover")
        })
    });
    $("#selector-search-input").on("keydown",
    function(event) {
        if (event.keyCode == 13) {
            $("#selector-search-btn").click()
        }
    });
    $("#selector-search-btn").on("click",
    function(event) {
        goCity(document.getElementById("selector-search-input").value, searchpath)
    });
    var HD = window.devicePixelRatio;
    if (HD > 1) {
        $("#header").addClass("header-HD");
        $("#logo").addClass("logo-HD");
        $("#bangbang").addClass("bangbang-HD");
        $(".selector-arrow").addClass("selector-arrow-HD");
        $(".selector-arrow-up").addClass("selector-arrow-up-HD");
        $(".content-province-triangle").addClass("content-province-triangle-HD")
    }
    $.ajax({
        url: "http://www.58.com/ipscript.aspx",
        type: "get",
        dataType: "xml",
        complete: function(result) {
            var city = "bj";
            if (result.status == 200) {
                city = result.responseText.split("http://")[1].split(".58.com")[0]
            }
            var cityname = "北京";
            for (var province in cityList) {
                for (var cityn in cityList[province]) {
                    if (cityList[province][cityn].split("|")[0] == city) {
                        cityname = cityn;
                        console.log(1);
                        break
                    }
                }
            }
            if (catename != "" && catepath != "") {
                $("#header-home-title").html(cityname + catename)
            } else {
                $("#header-home-title").html(cityname + "wangid")
            }
            $("#header-home-btn").on("click",
            function(event) {
                var address = "";
                if (catepath == "post") {
                    switch (city) {
                    case "bj":
                        address = "http://wangid.com/";
                        break;
                    case "tj":
                        address = "http://wangid.com/";
                        break;
                    case "sh":
                        address = "http://wangid.com/";
                        break;
                    case "cq":
                        address = "http://wangid.com/";
                        break;
                    default:
                        address = "http://wangid.com/" + cityList[province][cityname].split("|")[1] + "/"
                    }
                } else {
                    address = "http://" + city + "wangid.com/" + catepath
                }
                for (cityName in cityList["海外"]) {
                    if (cityList["海外"][cityName].split("|")[0] == city) {
                        address = "http://wangid.com/" + city + "/"
                    }
                }
                window.location.href = address
            });
            $.ajax({
                url: "http://wangid/" + city,
                type: "get",
                dataType: "jsonp",
                jsonpCallback: "nearcity",
                data: {
                    api_callback: "nearcity"
                }
            })
        }
    })
})(); 