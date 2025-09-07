import 'package:flutter/material.dart';
import 'package:salamatuk_app/compant/colors.dart';
import 'package:salamatuk_app/view/request.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Messages",style: h5 )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.create_outlined),
          )
        ],
      ),
      body: Container(margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(children: [
           SizedBox(height: 26),
          _messageTile(name: "Karim Hassan", 
          text: "Sohag\n I'm looking for a nurse to help with \n post-surgery care.", 
          i: "assets/images/Karim.png",
          Color: Colors.red,
          s: 90,
          ),
          _messageTile(name: "Aisha Ali", 
          text: "Saqalta\n I need a nurse for my elderly \n mother.", 
          i: "assets/images/aisha.png",
          Color: const Color.fromARGB(255, 57, 134, 60),
          s: 140,
          ),
          _messageTile(name: "Youssef Mahmoud", 
          text: "Akhmim\n Looking for a nurse for wound care.", 
          i: "assets/images/youssef.png",
          Color: Colors.grey,
          s: 90,
          ),
          _messageTile(name: "Nour Ibrahim", 
          text: " Al Kawthar\n Need a nurse for medication \n administration.", 
          i: "assets/images/Nour.png",
          Color: const Color.fromARGB(255, 57, 134, 60),
          s: 140,
          ),
          Stack(
            children:[ Container(width: double.infinity,height: 300,
              child: Image.asset("assets/images/request.png",fit: BoxFit.cover,)),
          Positioned(bottom: 20,left: 20,
            child: Text("Need help?\nStart a new\nconvarsation",style: h2,),),
          Positioned(bottom: 20,right: 20,
            child: FilledButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Request()),
              ),
              style: FilledButton.styleFrom(minimumSize: Size(200, 50),backgroundColor: kPrimary),
              child:  Text('Create New Req..',style: h2,),
            ),
          ),
        ])
        ],),
      ),
    );
  }
}

class _messageTile extends StatelessWidget {
  final String name;
  final  String i ;
  final  double s ;
  final dynamic Color ;
  final String text;
  const _messageTile({
    required this.name,
    required this.text,
    required this.i,
    required this.s,
    required this.Color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
       child:  Column( crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             children: [
               Container(height: 60,width: 60,
                child: Image.asset(i,fit: BoxFit.cover,),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)),),
               SizedBox(width: 20,),
               Column(  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  
                  Text(name, style:  h8),
                Text(text, style: h9,textAlign: TextAlign.left,),
            ],
                 ),
                SizedBox(width: s,),   
                CircleAvatar(radius: 6,backgroundColor: Color), 
             ],
           ),
          SizedBox(height: 20,),
         ],
       ),
      );
  }
}