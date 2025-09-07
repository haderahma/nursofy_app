import 'package:flutter/material.dart';
import 'package:salamatuk_app/compant/colors.dart';

class Bookingspatient extends StatelessWidget {
  const Bookingspatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',style: h5,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none),
          )
        ],),
        body:  Container(margin: EdgeInsets.all(20),
       child:  Column( crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Text("Upcoming Visits",style: h4,),
             SizedBox(height: 26,),
           Row(
             children: [
                Column(  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  
                  Text("Booking ID: 12345", style:  h9),
                  SizedBox(height: 8,),
                  Text("Nurse Visit",style: h8,),
                  SizedBox(height: 8,),
                Text("Scheduled for tomorrow, 9:00 AM", style: h9,textAlign: TextAlign.left,),
                SizedBox(height: 16,),
                Container(width: 150,height: 40,
                  decoration: BoxDecoration(
                    color: kMuted,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Center(child: Text("View Details",style: h6,)),
                ),
                SizedBox(height: 26,)

            ],
                 ),
                 SizedBox(width: 40,),
               Container(height: 150,width: 150,
                child: Image.asset("assets/images/nurse2.png",fit: BoxFit.cover,),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)),),
               
             
             ],
           ),
            Text("Past Visits",style: h4,),
             SizedBox(height: 26,),
           Row(
             children: [
                Column(  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  
                  Text("Booking ID: 67890", style:  h9),
                  SizedBox(height: 8,),
                  Text("Nurse Visit",style: h8,),
                  SizedBox(height: 8,),
                Text("Completed on July 15, 2024", style: h9,textAlign: TextAlign.left,),
                SizedBox(height: 16,),
                Container(width: 150,height: 40,
                  decoration: BoxDecoration(
                    color: kMuted,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Center(child: Text("Rate Nurse",style: h6,)),
                ),
                SizedBox(height: 26,)

            ],
                 ),
                 SizedBox(width: 75,),
               Container(height: 150,width: 150,
                child: Image.asset("assets/images/nurse3.png",fit: BoxFit.cover,),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)),),
               
             
             ],
           ),
           Text("Cancelled Visits",style: h4,),
             SizedBox(height: 26,),
           Row(
             children: [
                Column(  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  
                  Text("Booking ID: 98765", style:  h9),
                  SizedBox(height: 8,),
                  Text("Nurse Visit",style: h8,),
                  SizedBox(height: 8,),
                Text("Cancelled on July 20, 2024", style: h9,textAlign: TextAlign.left,),
                SizedBox(height: 16,),
                Container(width: 150,height: 40,
                  decoration: BoxDecoration(
                    color: kMuted,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Center(child: Text("View Details",style: h6,)),
                ),
                SizedBox(height: 26,)

            ],
                 ),
                 SizedBox(width: 80,),
               Container(height: 150,width: 150,
                child: Image.asset("assets/images/nurse4.png",fit: BoxFit.cover,),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)),),
               
             
             ],
           ),
     
     
         ],
       ),
      ),
    );
  }
}
 