import 'package:flutter/material.dart';

class UsBmi extends StatefulWidget {
  const UsBmi({super.key});

  @override
  State<UsBmi> createState() => _UsBmiState();
}

class _UsBmiState extends State<UsBmi> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Color? _indicatorColor;
  double bmi = 0;
  String message = 'Not Set';
  String? weightValidator(String? value) {
    switch (value!) {
      case '':
        return 'Please enter your weight';
      default:
        if (double.parse(value) < 66 || double.parse(value) > 485) {
          return 'Out of Range input';
        } else {
          return null;
        }
    }
  }

  String? heightValidator(String? value) {
    switch (value!) {
      case '':
        return 'Please enter your Height';
      default:
        if (double.parse(value) < 39.3 || double.parse(value) > 118) {
          return 'Out of range input';
        } else {
          return null;
        }
    }
  }

  void calculate() {
    if (_formKey.currentState!.validate()) {
      double weight = double.parse(_weightController.text);
      double height = double.parse(_heightController.text);
      (weight / (height * height)) * 703 < 40 &&
              (weight / (height * height)) * 703 > 10
          ? setState(() {
              bmi = (weight / (height * height)) * 703;
              if (bmi >= 25) {
                message = 'Overweight😓';
                _indicatorColor = Colors.red;
              } else if (bmi >= 18.5) {
                message = 'Healthy👌';
                _indicatorColor = Colors.green;
              } else {
                message = 'Underweight💔';
                _indicatorColor = Colors.orange;
              }
            })
          : ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Invalid Input! Check your inputs'),
              ),
            );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid Input! Check your inputs'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 150,
                child: TextFormField(
                  validator: weightValidator,
                  controller: _weightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    labelText: 'Weight',
                    suffixText: 'lbs',
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: TextFormField(
                  validator: heightValidator,
                  controller: _heightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    labelText: 'Height',
                    suffixText: 'in',
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 100),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
              width: 150,
              height: 150,
              child: CircularProgressIndicator(
                color: _indicatorColor,
                value: bmi / 40,
                strokeWidth: 10,
                strokeCap: StrokeCap.round,
              ),
            ),
            Column(
              children: [
                Text(bmi.toStringAsFixed(1)),
                Text(message),
              ],
            ),
          ],
        ),
        const SizedBox(height: 100),
        ElevatedButton(
          onPressed: calculate,
          child: const Text('Claculate'),
        ),
      ],
    );
  }
}
