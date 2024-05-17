import 'package:flutter/material.dart';
import 'package:medicine/add_medicine_page.dart';
import 'package:medicine/appcolors.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSecondaryBackGround,
      appBar: AppBar(
        title: const Text('Calendar', style: TextStyle(color: AppColors.lightPrimary),),
        iconTheme:const IconThemeData(color: AppColors.lightPrimary),
        backgroundColor: AppColors. lightPrimaryBackGround,
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: medicineList.length,
        itemBuilder: (context, index) {
          final item = medicineList[index];
          return calendarItem(item.time, item.name, '${item.days} days');
        },
      ),
    );
  }

  Widget calendarItem(String time, String pillName, String description) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.lightCouponBackGround,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(time, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(pillName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(description, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
