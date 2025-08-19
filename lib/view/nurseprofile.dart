import 'package:flutter/material.dart';
import 'package:salamatuk_app/compant/colors.dart';
import 'package:salamatuk_app/view/reviews.dart';

class NurseProfileScreen extends StatelessWidget {
  const NurseProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nurse Profile',style: h8 ,),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: cs.primaryContainer,
                backgroundImage: const AssetImage('assets/images/nurselayla.png'),
              ),
              const SizedBox(height: 12),
              Text('Dr. Layla Hassan',
                  style: h5),
              const SizedBox(height: 4),
              Text('Registered Nurse\nCairo, Egypt',
                  textAlign: TextAlign.center,
                  style: h9),
            ],
          ),
          const SizedBox(height: 20),
          Text('About',
              style:
                  h8),
          const SizedBox(height: 8),
          Text(
            'Dr. Layla Hassan is a highly experienced registered nurse with over 10 years of experience in home healthcare. She specializes in post-operative care, chronic disease management, and elderly care. Dr. Hassan is known for her compassionate approach and dedication to patient well-being.',
            style: h6,
          ),
          const SizedBox(height: 16),
          Text('Qualifications',
              style:
                   h8),
          const SizedBox(height: 26),
            
          //??
          Row(children: [
            Text("Bachelor \nOf Science \nin Nursing",style: h9,),
            SizedBox(width: 26,),
            Column(
              children: [
                Text("Registered Nurse (RN)",style: h9),
                 SizedBox(height: 12,),
                Text("Egyptian Nursing Council",style:h6 ,)
              ],
            ),
          ],),
          Text(" Cairo\nUniversity",style:h6 ,),
          Divider( endIndent: 370,),
          SizedBox(height: 20,),
           Text("Certified\nin \nAdvanced \ncardiac",style: h9),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ReviewsScreen()),
            ),
            style: FilledButton.styleFrom(minimumSize: const Size(double.infinity, 50),backgroundColor: kPrimary),
            child: const Text('Reviews'),
          ),
        ],
      ),
    );
  }
}
 