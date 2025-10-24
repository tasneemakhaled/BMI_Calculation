import 'package:bmi_app/Screens/data_screen.dart';
import 'package:bmi_app/models/bmi_model.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatefulWidget {
  const BmiResultScreen({super.key, required this.bmiModel});
  final BmiModel bmiModel;
  @override
  State<BmiResultScreen> createState() => _BmiResultScreenState();
}

class _BmiResultScreenState extends State<BmiResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Samy Call',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        Text(
                          'A 23 years old male.',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          '${widget.bmiModel.bmi.round()}',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        Text(
                          'BMI Calc',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  '${widget.bmiModel.height}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Height',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  '${widget.bmiModel.weight}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/body.png', height: 200),
                  ],
                ),
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xff7876CD),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Column(
                  children: [
                    Text('${widget.bmiModel.risk}'),
                    Text('${widget.bmiModel.summary}'),
                    Text('${widget.bmiModel.recommendation}'),
                  ],
                ),
                width: 350,
                height: 280,
                decoration: BoxDecoration(
                  color: Color(0xff01502E),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Color(0xff484783),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return DataScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Calculate BMI Again',
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
