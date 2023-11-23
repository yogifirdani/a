import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/5515846 1.png')),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "CREATE YOUR ACCOUNT",
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0XFF78206F)),
          ),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0XFFC7B8EF),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              hintText: "Name",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0XFFC7B8EF),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              hintText: "Email",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0XFFC7B8EF),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: "password",
              suffixIcon: Icon(Icons.remove_red_eye)
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0XFFC7B8EF),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                border: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                hintText: "Confirm password",
                suffixIcon: const Icon(Icons.remove_red_eye)),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: const Color(0XFFB6448A),
                fixedSize: const Size(350, 60)),
            child: const Text(
              "SIGN UP",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        
      ),
    ));
  }
}
