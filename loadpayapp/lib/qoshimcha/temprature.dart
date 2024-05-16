import 'package:flutter/material.dart';

class TemperatureConverter extends StatefulWidget {
  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  TextEditingController _celsiusController = TextEditingController();
  TextEditingController _fahrenheitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _celsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Celsius',
                suffix: Text('°C'),
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  double celsius = double.parse(value);
                  double fahrenheit = (celsius * 9 / 5) + 32;
                  _fahrenheitController.text = fahrenheit.toStringAsFixed(2);
                } else {
                  _fahrenheitController.clear();
                }
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _fahrenheitController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Fahrenheit',
                suffix: Text('°F'),
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  double fahrenheit = double.parse(value);
                  double celsius = (fahrenheit - 32) * 5 / 9;
                  _celsiusController.text = celsius.toStringAsFixed(2);
                } else {
                  _celsiusController.clear();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
