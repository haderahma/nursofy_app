

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:provider/provider.dart';
import 'package:salamatuk_app/compant/colors.dart';
import 'package:geolocator/geolocator.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:salamatuk_app/provider/prov.dart';

class Request extends StatefulWidget {
  

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
/*  var cl;
  String locationMessage = "Choose your lacation";

  Future<void> getCurrentLocation() async {
    // تأكد من الصلاحيات
    bool serviceEnabled;
    LocationPermission permission;

    // GPS شغال؟
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
   /* if (!serviceEnabled) {
    AwesomeDialog(
      context: context,
      title: "services",
      body: Text("Services Not Enabled"))..show();
      return;
    }*/
     permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }
      if (permission == LocationPermission.deniedForever) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        title: "Permission Denied",
        desc: "Location permissions are permanently denied.\n Please enable them from settings.",
      ).show();
      return;
    }
    cl = await Geolocator.getCurrentPosition();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(cl!.latitude, cl!.longitude);
         Placemark place = placemarks[0];
    setState(() {
      locationMessage =
          "${place.street}, ${place.locality}, ${place.country}";
    });
    }*/
   
  @override

  Widget build(BuildContext context) {
   
    return Scaffold(
       appBar: AppBar(centerTitle: true,
       leading: IconButton( onPressed: () {
        Navigator.of(context).pop();
       },
        icon:Icon(Icons.arrow_back,size: 30,),),
        title:  Text('New Request',style: h5,)),
       body: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(margin: EdgeInsets.all(20),
            decoration: BoxDecoration(color: kMuted,
            borderRadius: BorderRadius.circular(16)),
            child: TextFormField(
              decoration: InputDecoration(border: InputBorder.none),
              maxLines: 8,
            ),
           ),
            Consumer<Control>(
                  builder: (context, control, child) {
                return MaterialButton(
             onPressed: () async { 
              await control.getCurrentLocation(context);
              
              },
             child: Container(height: 50,
             margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(color: kMuted,
              borderRadius: BorderRadius.circular(16),
              ),
              child: Row(children: [
                SizedBox(width: 20,),
                Icon(Icons.location_on_outlined),
                SizedBox(width: 10,),
                Text(
                  control.locationMessage,style: h8,
                   overflow: TextOverflow.ellipsis,
                  )
              ],
              ),
              ),
           );}),
            SizedBox(height: 450,),
            Container(height: 50,width: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(color: kPrimary,
            borderRadius: BorderRadius.circular(16),
            ),
            
            child: Center(child: Text("Submit Requast",style: h7,)),)
         ],
       ),
    );
  }
}
class LocationExample extends StatefulWidget {
  const LocationExample({Key? key}) : super(key: key);

  @override
  _LocationExampleState createState() => _LocationExampleState();
}

class _LocationExampleState extends State<LocationExample> {
  String locationMessage = "No location added yet";

  Future<void> _getCurrentLocation() async {
    // تأكد من الصلاحيات
    bool serviceEnabled;
    LocationPermission permission;

    // GPS شغال؟
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        locationMessage = "Location services are disabled.";
      });
      return;
    }

    // الصلاحيات
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          locationMessage = "Location permission denied.";
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        locationMessage = "Location permissions are permanently denied.";
      });
      return;
    }

    // الحصول على الموقع
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      locationMessage =
          "Lat: ${position.latitude}, Long: ${position.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Location Example")),
      body: Center(child: Text(locationMessage)),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCurrentLocation,
        child: Icon(Icons.add_location_alt),
        backgroundColor: Colors.teal,
      ),
    );
  }
}