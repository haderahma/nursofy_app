import 'package:flutter/material.dart';
import 'package:salamatuk_app/compant/colors.dart';
 
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class AvailabilityScreen extends StatefulWidget {
  final DateTime selectedDate;

  const AvailabilityScreen({super.key, required this.selectedDate});
  
 
   
 
  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}
 
class _AvailabilityScreenState extends State<AvailabilityScreen> {
  DateTime? _selectedDay; 
  DateTime _focusedDay = DateTime.now();
  String? _selectedTime = '11:00';
  int _selectedPaymentMethodIndex = 0; // بطاقة الائتمان

  final times = const ['09:00', '10:00', '11:00', '12:00', '13:00'];

  @override
  Widget build(BuildContext context) {
    final dateStr = DateFormat('EEE, d MMM yyyy').format(widget.selectedDate);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title:  Text('Availability')),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding:  EdgeInsets.all(16.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.0),
                    child: TableCalendar(
                      firstDay: DateTime.now(),
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
                         defaultTextStyle:  TextStyle(color: Colors.black),
                         weekendTextStyle:  TextStyle(color: Colors.black54),
                      ),
                        headerStyle:  HeaderStyle(
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
              final snack = 'You Booked ${_selectedTime ?? ''} on $dateStr';
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(snack)));
            },
            style: FilledButton.styleFrom(backgroundColor:kPrimary ,
              minimumSize:  Size(double.infinity, 52)),
            child:  Text('Book Now'),
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
        padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          border: isSelected ? Border.all(color: kPrimary, width: 2) : null,
        ),
        child: Row(
          children: [
            Text(
              title,
              style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
             Spacer(),
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
 
 