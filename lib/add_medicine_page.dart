import 'package:flutter/material.dart';
import 'package:medicine/appcolors.dart';

// Define the Medicine model
class Medicine {
  final String name;
  final String dose;
  final String time;
  final int days;

  Medicine({required this.name, required this.dose, required this.time, required this.days});
}

// Global list to hold medicines
List<Medicine> medicineList = [];

class AddMedicinePage extends StatefulWidget {
  const AddMedicinePage({super.key});

  @override
  _AddMedicinePageState createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage> {
  final TextEditingController _pillNameController = TextEditingController();
  String _selectedDose = '0.5';
  String _selectedTime = '11:30 AM';
  int _selectedDays = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSecondaryBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.lightPrimaryBackGround,
        title: const Text('Add Medicine', style: TextStyle(color: AppColors.lightPrimary),),
        iconTheme: const IconThemeData(color: AppColors.lightPrimary),
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset(
                  'assets/add.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            TextField(
              controller: _pillNameController,
              decoration: const InputDecoration(
                labelText: 'Pill name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            _buildDropdownField(
              labelText: 'Dose',
              value: _selectedDose,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedDose = newValue!;
                });
              },
              items: ['0.5', '1', '1.5', '2'],
            ),
            const SizedBox(height: 20),
            _buildDropdownField(
              labelText: 'Time',
              value: _selectedTime,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedTime = newValue!;
                });
              },
              items: [
                '11:30 AM',
                '12:00 PM',
                '04:00 PM',
                '8:00 PM',
                '10:30 PM',
                '6:00 AM',
              ],
            ),
            const SizedBox(height: 20),
            _buildDropdownField(
              labelText: 'Duration',
              value: _selectedDays.toString(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedDays = int.parse(newValue!);
                });
              },
              items: List.generate(30, (index) => index + 1).map((value) => '$value days').toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(AppColors.lightPrimary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: _addMedicine,
              child: const Text(
                'Add Medicine',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownField({
    required String labelText,
    required String value,
    required ValueChanged<String?> onChanged,
    required List<String> items,
  }) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
      items: items.map((item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
    );
  }

  void _addMedicine() {
    final newMedicine = Medicine(
      name: _pillNameController.text,
      dose: _selectedDose,
      time: _selectedTime,
      days: _selectedDays,
    );
    medicineList.add(newMedicine);
    Navigator.pushNamed(context, '/calendar');
  }
}
