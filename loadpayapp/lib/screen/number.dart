import 'package:flutter/material.dart';

class ConfirmPhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Phone Number'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Check your message, because we sent you a code for verification',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50.0,
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Text(
                  'Haven\'t received a code?',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {}, // Handle resend code functionality
                  child: Text(
                    'Resend',
                    style: TextStyle(fontSize: 12.0, color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {}, // Handle continue button functionality
              child: Text('Continue'),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By continuing, you agree to our ',
                  style: TextStyle(fontSize: 12.0),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Terms of Use',
                    style: TextStyle(fontSize: 12.0, color: Colors.blue),
                    // Add functionality to handle terms of use link tap
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
