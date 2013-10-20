
var Profile = {
    check: function(id) {
        if ($.trim($("#" + id)[0].value) == '') {
            $("#" + id)[0].focus();
            $("#" + id + "_alert").show();

            return false;
        }
        ;

        return true;
    },
    validate: function() {
        if (SignUp.check("name") == false) {
            return false;
        }
        if (SignUp.check("email") == false) {
            return false;
        }
        $("#profileForm")[0].submit();
    }
};

var SignUp = {
    check: function(id) {
        if ($.trim($("#" + id)[0].value) == '') {
            $("#" + id)[0].focus();
            $("#" + id + "_alert").show();

            return false;
        }
        ;

        return true;
    },
    validate: function() {
        if (SignUp.check("name") == false) {
            return false;
        }
        if (SignUp.check("username") == false) {
            return false;
        }
        if (SignUp.check("email") == false) {
            return false;
        }
        if (SignUp.check("password") == false) {
            return false;
        }
        if ($("#password")[0].value != $("#repeatPassword")[0].value) {
            $("#repeatPassword")[0].focus();
            $("#repeatPassword_alert").show();

            return false;
        }
        $("#registerForm")[0].submit();
    }
};

var customIcons = {
    user: {
        icon: 'http://labs.google.com/ridefinder/images/mm_20_green.png',
        shadow: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png'
    },
    supplier: {
        icon: 'http://labs.google.com/ridefinder/images/mm_20_red.png',
        shadow: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png'
    }
};

var Map = {
    downloadUrl: function(url, callback) {
        var request = window.ActiveXObject ?
                new ActiveXObject('Microsoft.XMLHTTP') :
                new XMLHttpRequest;

        request.onreadystatechange = function() {
            if (request.readyState == 4) {
                request.onreadystatechange = Map.doNothing();
                callback(request, request.status);
            }
        };

        request.open('GET', url, false);
        request.send(null);
    }
    ,
    bindInfoWindow: function(maplocation, map, infoWindow, html) {
        google.maps.event.addListener(maplocation, 'click', function() {
            infoWindow.setContent(html);
            infoWindow.open(map, maplocation);
        });
    }
    ,
    doNothing: function() {
    }
    ,
    loadMap: function() {
        var map = new google.maps.Map(document.getElementById("map"), {
            center: new google.maps.LatLng(38.8407269,-9.1602799),
            zoom: 6,
            mapTypeId: 'roadmap'
        });
        var infoWindow = new google.maps.InfoWindow;

        Map.downloadUrl("../genMapLocationsXML.php", function(data) {
            var xml = data.responseXML;
            var maplocations = xml.documentElement.getElementsByTagName("maplocation");
            for (var i = 0; i < maplocations.length; i++) {
                var name = maplocations[i].getAttribute("name");
                var address = maplocations[i].getAttribute("address");
                var type = maplocations[i].getAttribute("type");
                var point = new google.maps.LatLng(
                        parseFloat(maplocations[i].getAttribute("lat")),
                        parseFloat(maplocations[i].getAttribute("lng")));
                var html = "<b>" + name + "</b> <br/>" + address;
                var icon = customIcons[type] || {};
                var marker = new google.maps.Marker({
                    map: map,
                    position: point,
                    icon: icon.icon,
                    shadow: icon.shadow
                });
                Map.bindInfoWindow(marker, map, infoWindow, html);
            }
        });
    }
};



$(document).ready(function() {
    $("#registerForm .alert").hide();
    $("div.profile .alert").hide();
});
