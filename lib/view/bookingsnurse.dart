import 'package:flutter/material.dart';
import 'package:salamatuk_app/compant/colors.dart';

class Bookingsnurse extends StatelessWidget {
  const Bookingsnurse({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',style: h5,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none),
          )
        ],),
        body:  ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(margin: EdgeInsets.all(20),
                   child:  Column( crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                Text("New Patient Requests",style: h4,),
                 SizedBox(height: 26,),
               Row(
                 children: [
                    Column(  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      
                      Text("Booking ID: 67890", style:  h9),
                      SizedBox(height: 8,),
                      Text("Patient Visit",style: h8,),
                      SizedBox(height: 8,),
                    Text("Requested for July 25, 2024", style: h9,textAlign: TextAlign.left,),
                    SizedBox(height: 16,),
                    Container(width: 150,height: 40,
                      decoration: BoxDecoration(
                        color: kMuted,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Center(child: Text("Accept Request",style: h6,)),
                    ),
                    SizedBox(height: 26,)
            
                ],
                     ),
                     SizedBox(width: 80,),
                   Container(height: 150,width: 150,
                    child: Image.asset("assets/images/patient.png",fit: BoxFit.cover,),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),),
                   
                 
                 ],
               ),
                Text("My Accepted Visits",style: h4,),
                 SizedBox(height: 26,),
               Row(
                 children: [
                    Column(  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      
                      Text("Booking ID: 12345", style:  h9),
                      SizedBox(height: 8,),
                      Text("Patient Visit",style: h8,),
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
                     SizedBox(width: 39,),
                   Container(height: 150,width: 150,
                    child: Image.asset("assets/images/patient1.png",fit: BoxFit.cover,),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),),
                   
                 
                 ],
               ),
               Text("Cancelled Requests",style: h4,),
                 SizedBox(height: 26,),
               Row(
                 children: [
                    Column(  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      
                      Text("Booking ID: 54321", style:  h9),
                      SizedBox(height: 8,),
                      Text("Patient Visit",style: h8,),
                      SizedBox(height: 8,),
                    Text("Cancelled on July 24, 2024", style: h9,textAlign: TextAlign.left,),
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
                     SizedBox(width: 86,),
                   Container(height: 150,width: 150,
                    child: Image.asset("assets/images/patient2.png",fit: BoxFit.cover,),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),),
                   
                 
                 ],
               ),
               Text("Earnings/Payment History",style: h4,),
                 SizedBox(height: 26,),
               Row(
                 children: [
                    Column(  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      
                      Text("Booking ID: 98765", style:  h9),
                      SizedBox(height: 8,),
                      Text("Payment Received",style: h8,),
                      SizedBox(height: 8,),
                    Text("July 24, 2024-\$50", style: h9,textAlign: TextAlign.left,),
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
                     SizedBox(width: 135,),
                   Container(height: 150,width: 150,
                    child: Image.asset("assets/images/maney.png",fit: BoxFit.cover,),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),),
                   
                 
                 ],
               ),
                 
             ],
                   ),
                  ),
          ],
        ),
    );
  }
}