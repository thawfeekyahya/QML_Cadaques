import QtQuick 2.0
import "../components"

Item {
    anchors.fill: parent;

    property string google: "http://www.google.com"
    property string mblink: "https://content-ece-dev.azure.mercedes-benz.com/weather/actuator/health"

    Button {
        onClicked: {
            console.log("Button has been clicked");
            intiateHttp();
        }
    }

    function intiateHttp() {
        var req = new XMLHttpRequest();
//        req.open("POST", mblink,true);
        req.open("GET", google,true);

        req.onreadystatechange = function () {
            if(this.readyState === 4 ){
                if(this.status === 200) {
                   console.log("Fire----------------->");
                }else {
                   console.log("Fail----------------->") ;
                }
            }
        };
        req.send();
    }

}
