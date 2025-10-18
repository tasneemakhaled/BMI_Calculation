import 'package:bmi_app/Screens/bmi_calac_screen.dart';
import 'package:bmi_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI',
          style: TextStyle(
            fontSize: 40,
            color: Color(0xff01502E),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text('Name'),
              CustomTextField(hintText: 'Enter your name'),
              SizedBox(height: 5),
              Text('Birth Date'),
              CustomTextField(hintText: 'Enter your Birth Date'),
              SizedBox(height: 5),
              Text('Choose Gender', style: TextStyle(fontSize: 16)),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // InkWell(
                  //   onTap: () {
                  //     isSelected = true;
                  //     gender = 'male';
                  //     log('gender is male');
                  //   },
                  //   highlightColor: Colors.amber,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 'male';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: gender == 'male' ? Colors.blue : Colors.grey,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/male.png'),
                          Text('Male', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),

                  // InkWell(
                  //   onTap: () {

                  //     gender = 'female';
                  //     log('gender is female');
                  //   },
                  //   highlightColor: Colors.amber,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = 'female';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: gender == 'female' ? Colors.pink : Colors.grey,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/female.png'),
                          Text('Female', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  // ),
                ],
              ),
              Text('Your Height(cm)'),
              CustomTextField(
                hintText: 'Enter Your height',
                prefixIcon: Icon(Icons.minimize),
                suffixIcon: Icon(Icons.add),
              ),

              Text('Your Weight(kg)'),
              CustomTextField(
                hintText: 'Enter Your weight',
                prefixIcon: Icon(Icons.minimize),
                suffixIcon: Icon(Icons.add),
              ),

              Center(
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xff484783),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return BmiCalacScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Calculate BMI',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
widget life cycle
stateful
constructor
create state
init state
build
did dependency changed()
dispose
set state()

-- stateless 
constructor 
build
*/ 