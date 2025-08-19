import 'package:flutter/material.dart';
import 'package:salamatuk_app/compant/colors.dart';
 
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class AvailabilityScreen extends StatefulWidget {
  const AvailabilityScreen({super.key,});
   
 
  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String? _selectedTime = '11:00';
  int _selectedPaymentMethodIndex = 0; // بطاقة الائتمان

  final times = const ['09:00', '10:00', '11:00', '12:00', '13:00'];

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Availability')),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TableCalendar(
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2035, 12, 31),
                      focusedDay: _focusedDay,
                      selectedDayPredicate: (d) => isSameDay(d, _selectedDay),
                      onDaySelected: (selected, focused) {
                        setState(() {
                          _selectedDay = selected;
                          _focusedDay = focused;
                        });
                      },
                       
                     
              
                      calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(
                          color:kPrimary.withOpacity(.2),
                          shape: BoxShape.circle,
                        ),
                        selectedDecoration: BoxDecoration(
                          color:  kPrimary,
                          shape: BoxShape.circle,
                        ),
                         defaultTextStyle: const TextStyle(color: Colors.black),
                         weekendTextStyle: const TextStyle(color: Colors.black54),
                      ),
                        headerStyle: const HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                      titleTextStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ),
                  ),
                     SizedBox(height: 14),
           Text('Select Time', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700), ),
            SizedBox(height: 12),
          _TimeSelector(
            times: times,
            selected: _selectedTime,
            onSelect: (t) => setState(() => _selectedTime = t),
          ),
            SizedBox(height: 24),
            Text('Payment Method', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
           
             SizedBox(height: 16),
            _buildPaymentOption(0, 'Credit Card'),
              SizedBox(height: 12),
            _buildPaymentOption(1, 'Cash on Delivery'),
            SizedBox(height: 24),
          
          FilledButton(
            onPressed: () {
              final snack = 'You Booked ${_selectedTime ?? ''} on ${_selectedDay ?? ''}';
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(snack)));
            },
            style: FilledButton.styleFrom(backgroundColor:kPrimary ,
              minimumSize: const Size(double.infinity, 52)),
            child: const Text('Book Now'),
          ),
                ],
              ),
            ),
          ),
            
         
        ],
      ),
       
    );
  }
   Widget _buildPaymentOption(int index, String title) {
    final isSelected = _selectedPaymentMethodIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPaymentMethodIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          border: isSelected ? Border.all(color: kPrimary, width: 2) : null,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Radio<int>(
              value: index,
              groupValue: _selectedPaymentMethodIndex,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethodIndex = value!;
                  
                });
              },
              activeColor: kPrimary,
            ),
          ],
        ),
      ),
    );
  }
}

class _TimeSelector extends StatelessWidget {
  final List<String> times;
  final String? selected;
  final ValueChanged<String> onSelect;
  const _TimeSelector({required this.times, required this.selected, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: times
            .map((t) => Column(
                  children: [
                    ListTile(
                      title: Text(t),
                      trailing: selected == t
                          ? const Icon(Icons.check_circle,color:kPrimary ,)
                          : const Icon(Icons.radio_button_unchecked),
                      onTap: () => onSelect(t),
                    ),
                    if (t != times.last) const Divider(height: 0),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
 
 