 import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
 import 'package:geolocator/geolocator.dart';
 import 'package:geocoding/geocoding.dart';

class Control with ChangeNotifier {
  Position? _position;
  String _locationMessage = "Choose your location";

  String get locationMessage => _locationMessage;
  Position? get position => _position;

  Future<void> getCurrentLocation(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    // GPS شغال؟
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    // تحقق من الصلاحيات
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.whileInUse) {
       /* locationMessage = "Location Permission Denied";*/
        
    notifyListeners();
        notifyListeners();
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
     /* _locationMessage =
          "Location permissions are permanently denied. Please enable from settings.";*/
           AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        title: "Permission Denied",
        desc: "Location permissions are permanently denied.\n Please enable them from settings.",
      ).show();
      notifyListeners();
      return;
    }

    // عندنا الصلاحية
    _position = await Geolocator.getCurrentPosition();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(_position!.latitude, _position!.longitude);
        Placemark place = placemarks[0];
        permission = await Geolocator.requestPermission();
     _locationMessage =
        "${place.street}, ${place.locality}, ${place.country}";
         notifyListeners();
         return;
     

    
  }

}