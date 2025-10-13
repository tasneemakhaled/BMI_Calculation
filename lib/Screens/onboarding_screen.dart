import 'package:bmi_app/Screens/data_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 130),
        Image.asset('assets/first_img.png', height: 250, width: 300),
        Container(
          height: 260,
          width: 400,
          decoration: BoxDecoration(
            color: Color(0xff7876CD),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('''Know Your Body Better, 
Get Your BMI Score in Less
Than a Minute!''', style: TextStyle(color: Colors.white, fontSize: 24)),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  '''It takes just 30 seconds – and your health
                       is worth it!''',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 10),
                Divider(indent: 20, endIndent: 20),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return DataScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff484783),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    height: 45,
                    width: 300,

                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
