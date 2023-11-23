import 'package:a/loginpage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/wel.png',
              height: 250,
              width: 250,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Image.asset(
                'assets/welcome.png',
                height: 240,
                width: 240,
              ),
            ),
            const Text(
              "Take Care of Your Animal",
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffBE83B2)),
              textAlign: TextAlign.center,
              
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: const Text(
                "Animal managing app,  all types of services your Animal in one place.",
                style: TextStyle(fontSize: 15, color: Color(0xffBE83B2)),
                textAlign: TextAlign.center
              ),
            ),
            SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffBE83B2)),
                  minimumSize: MaterialStateProperty.all<Size>(Size(60, 60)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),),
                  
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
