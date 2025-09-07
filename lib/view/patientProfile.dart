import 'package:flutter/material.dart';
import 'package:salamatuk_app/compant/colors.dart';

class Patientprofile extends StatelessWidget {
  const Patientprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text("Patient Profile",style: h5 ),
     leading: IconButton( onPressed: () {
        Navigator.of(context).pop();
       },
        icon:Icon(Icons.arrow_back,size: 30,),),
      ),
      body: ListView(scrollDirection: Axis.vertical,
        
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(margin: EdgeInsets.only(top: 30),
                child: Center(child: Image.asset("assets/images/Aisha2.png"))),
                SizedBox(height: 20,),
                Text("Aisha Hassan",style: h4,),
                SizedBox(height: 4,),
                Text("Patient ID: 123456",style: h9,),
                SizedBox(height: 4,),
                Text("Last Updated: 2024-01-20",style: h9,),
                SizedBox(height: 30,),
                Container(width: double.infinity,
                  margin: EdgeInsets.only(left: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Personal Information",style: h4,),
                    SizedBox(height: 20,),
                    Divider(indent: 10,endIndent: 200,),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("Full Name",style: h9,),
                        SizedBox(width: 20,),
                        Text("Aisha Hassan",style: h10,)
                      ],
                    ),
                    SizedBox(height: 20,),
                     Row(
                      children: [
                        Text("Age",style: h9,),
                        SizedBox(width: 20,),
                        Text("65",style: h10,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Divider(indent: 10,endIndent: 280,),
                    SizedBox(height: 20,),
                    Text("Gender",style: h9,),
                     SizedBox(height: 8,),
                     Text("female",style: h10,),
                     SizedBox(height: 30,),
                     Text("Contact Information",style: h4,),
                     SizedBox(height: 20,),
                    Divider(indent: 10,endIndent: 10,),
                    SizedBox(height: 20,),
                    Text("Phone Number",style: h9,),
                     SizedBox(height: 8,),
                     Text("+20 123 456 7890",style: h10,),
                     SizedBox(height: 30,),
                     Divider(indent: 10,endIndent: 10,),
                      SizedBox(height: 20,),
                    Text("Email",style: h9,),
                     SizedBox(height: 8,),
                     Text("aisha.hassan@example.com",style: h10,),
                     SizedBox(height: 30,),
                    Text("Medical History",style: h4,),
                    SizedBox(height: 20,),
                     Divider(indent: 10,endIndent: 10,),
                     SizedBox(height: 20,),
                    Text(" Conditions",style: h9,),
                     SizedBox(height: 8,),
                     Text("Hypertension, Diabetes",style: h10,),
                     SizedBox(height: 30,), 
                     Divider(indent: 10,endIndent: 10,),
                     SizedBox(height: 20,),
                    Text(" Medications",style: h9,),
                     SizedBox(height: 8,),
                     Text("Metformin, lisinopril",style: h10,),
                     SizedBox(height: 30,),
                     Divider(indent: 10,endIndent: 10,),
                     SizedBox(height: 20,),
                    Text(" Allergies",style: h9,),
                     SizedBox(height: 8,),
                     Text("Penicilin",style: h10,),
                     SizedBox(height: 40,),
                     Container(width: 150,height: 50,
                      margin: EdgeInsets.only(left: 300,bottom: 10),
                      child: Center(child: Text("Edit Profile",style: h7,)),
                      decoration: BoxDecoration(
                      color: kPrimary,
                      borderRadius: BorderRadius.circular(16)
                     ),)  
                  ],
                )),
            ],
            ),
          ],
        ),
      
    );
  }
}