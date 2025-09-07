import 'dart:math';

import 'package:flutter/material.dart';
import 'package:salamatuk_app/compant/colors.dart';
import 'package:salamatuk_app/view/availability.dart';
 
class ReviewsScreen extends StatelessWidget {
  
  
    DateTime? _selectedDay; 
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Specialties ',style: h5,)),
      body: ListView(
        padding:   EdgeInsets.all(20),
        children: [
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children:   [
              _Tag('Post-Operative Care'),
              _Tag('Chronic Disease'),
              _Tag('Management'),
              _Tag('Elderly Care'),
            ],
          ), 
            SizedBox(height: 20),
          Text("Reviews",style: h5,),
           SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                    Text('4.8',
                      style: TextStyle(fontSize: 42, fontWeight: FontWeight.w800)),
                      Row(
                        children: [
                          Icon(Icons.star,color: kPrimary,),
                          Icon(Icons.star,color: kPrimary,),
                          Icon(Icons.star,color: kPrimary,),
                          Icon(Icons.star,color: kPrimary,),
                          Icon(Icons.star_border,color: kPrimary,),
                        ],
                      ),
                        SizedBox(height: 8),
                     Text('125 reviews', style: h6),
                ],
              ),
                  
                SizedBox(width: 16),
              Expanded(
                child: Column(
                  children:   [
                    _ReviewBar(num: 5, ratio: .70),
                    _ReviewBar(num: 4, ratio: .20),
                    _ReviewBar(num: 3, ratio: .05),
                    _ReviewBar(num: 2, ratio: .03),
                    _ReviewBar(num: 1, ratio: .02),
                  ],
                ),
              )
            ],
          ),
          
            SizedBox(height: 26),
            _ReviewTile(
            name: 'Amira Khaled',
            date: '2 weeks ago',
            rating: 5,
            text:
                '''Layla Hassan provided exceptional 
                care for my mother after her surgery. She was attentive,
                 professional, and made sure my mother 
                 was comfortable and well‑cared for. Highly recommend!''',
                i: "assets/images/amira.png",
                num1: 15,
                num2: 2,
                
          ),
            Divider(),
            _ReviewTile(
            name: 'Omar Tarek',
            date: '1 month ago',
            rating: 4,
            text:
                ''' Layla Hassan is a very competent and caring nurse.
                 She helped manage my father\'s
                  diabetes effectively and provided valuable advice.
                   I appreciate her dedication.''',
                i: "assets/images/omar.png",
                num1: 8,
                num2: 1,
          ),
           SizedBox(height: 12),
          FilledButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AvailabilityScreen(selectedDate: _selectedDay ?? _focusedDay)),
            ),
            style: FilledButton.styleFrom(backgroundColor:  kPrimary,
              minimumSize:  Size(double.infinity, 50)),
            child:  Text('Check Availability'),
          ),
        ],
      ),
    );
  }
}

 
class _Tag extends StatelessWidget {
  final String label;
  const _Tag(this.label);
  @override
  Widget build(BuildContext context) {
     
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: kMuted,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: 
      TextStyle(fontSize: 16,color: Colors.black)),
    );
  }
}
class _ReviewBar extends StatelessWidget {
 
  final double ratio;
  final dynamic num;
  
   _ReviewBar({required this.num, required this.ratio});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(vertical: 4),
      child: Row(children: [
         
         SizedBox(width: 4),
         Text('$num'),
         SizedBox(width: 12),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(value: ratio, minHeight: 10,
            backgroundColor: kMuted, color: kPrimary,),
          ),
        ),
          SizedBox(width: 8),
       
        Text('${(ratio * 100).round()}%'),
      ]),
    );
  }
}

class _ReviewTile extends StatelessWidget {
  final String name;
  final int num1;
  final int num2;
  final  String i ;
  final String date;
  final int rating;
  final String text;
  const _ReviewTile({
    required this.name,
    required this.date,
    required this.rating,
    required this.text,
     required this.i,
    required this.num1,
     required this.num2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      
       child:  Column( crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             children: [
               CircleAvatar(child: Image.asset(i),radius: 20,),
                 SizedBox(width: 8),
               Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(name, style:  h8),
               SizedBox(width: 8),
              Text(date, style: h9),
            ],
                 ),
             ],
           ),
           SizedBox(height: 10,),
             Row(children: [
           ...List.generate(5, (i) => Icon(i < rating 
           ? Icons.star : Icons.star_border, 
           size: 24,color: kPrimary,)),
         
          ],),
           SizedBox(height: 6),
          Text(text,style: h6,),
          SizedBox(height: 20,),
          Row(children: [
            Icon(Icons.thumb_up_off_alt_outlined,color: kTextTeal,),
            SizedBox(width: 10,),
            Text("$num1",style: h9,),
            SizedBox(width: 30,),
            Icon(Icons.thumb_down_off_alt_rounded,color: kTextTeal,),
            SizedBox(width: 10,),
            Text("$num2",style: h9,),
          ],),
          SizedBox(height: 20,),
         ],
       ),
      );
  }
}
