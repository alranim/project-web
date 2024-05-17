
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medicine/add_medicine_page.dart';
import 'package:medicine/appcolors.dart';
import 'package:medicine/calendar_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeContent(),
    const AddMedicinePage(),
    const CalendarPage(),
  ];

  void _onTabChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSecondaryBackGround,
      bottomNavigationBar: Container(
        color:AppColors.lightPrimaryBackGround,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: GNav(
            backgroundColor:AppColors.lightPrimaryBackGround,
            color: AppColors.lightPrimaryText,
            activeColor: Colors.white,
            tabBackgroundColor: AppColors.lightPrimary,
            gap: 22,
            padding: const EdgeInsets.all(16),
            onTabChange: _onTabChanged,
            tabs: const [
              GButton(icon: Icons.home_outlined, text: 'Home'),
              GButton(icon: Icons.add, text: 'Add'),
              GButton(icon: Icons.calendar_today_rounded, text: 'Calendar'),
            ],
          ),
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,40, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserInfo(),
              const SizedBox(height: 40),
              _buildNextPill(),
              const SizedBox(height: 40),
              _buildNextAppointment(),
              const SizedBox(height: 40),
              _buildCabinet(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return const Padding(
      padding:  EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage:AssetImage("assets/girl.jpg"),
            maxRadius: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Maya!',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  'How do you feel today?',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNextPill() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '22 Jun',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const Text(
          'Your Next Pill',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightCouponBackGround,
          ),
          height: 85,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/medicine.png',
                  fit: BoxFit.contain,
                  width: 80,
                  height: 80,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Omega 3',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.lightPrimaryText,
                        ),
                      ),
                      Text(
                        '1 pill before eat',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.lightSecondaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNextAppointment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Your Next Appointment',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightCouponBackGround,
          ),
          height: 90,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.calendar_today_rounded,
                  size: 50,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mammogram',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.lightPrimaryText,
                        ),
                      ),
                      Text(
                        'Schedule the test',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.lightSecondaryText,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 1,
                  color: AppColors.lightPrimaryText,
                ),
                const Column(
                  children: [
                    Text(
                      '1 July',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightPrimaryText,
                      ),
                    ),
                    Text(
                      '10 am',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightSecondaryText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCabinet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Your Cabinet',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildMedicineContainer('Locast LC', '20 pills', 'take before eat'),
            _buildMedicineContainer('vitamin A', '40 pills', 'take before eat'),
          ],
        ),
      ],
    );
  }

  Widget _buildMedicineContainer(String name, String quantity, String description) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.lightCouponBackGround,
      ),
      height: 120,
      width: 165,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/medicine.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.lightPrimaryText,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quantity,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.lightPrimary,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.lightSecondaryText,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

