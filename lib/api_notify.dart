import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class api_notify{
  api_notify(){
    _getCurrentLocation();
    call_api();m                                                            
  }
String loclat ="";
String loclong ="";
 void _getCurrentLocation() async {

    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    loclat = "${position.latitude}"; 
    loclong = "${position.longitude}";
    print(position);

  }
  
int i;
call_api(){
  for(i=0;i>-1;i++)
  {
    String url = 'https://gaadicalls.firebaseapp.com/update_location/vendor1/'+loclat+'/'+loclong.toString();
    http.get(Uri.encodeFull(url));
  }
}
  
}