import 'package:a/model/userModel.dart';
import 'package:a/register-page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: const LoginWidget(),
        ),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    super.key,
  });

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.only(top: 55),
            child: const Image(image: AssetImage('assets/Logo & image.jpg'))),

        Container(
          padding: EdgeInsets.only(top: 50, bottom: 20),
          child: const Text(
            "CREATE YOUR ACCOUNT",
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0XFF78206F)),
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: TextField(
            controller: userController,
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 22, horizontal: 20),
              filled: true,
              fillColor: Color(0XFFC7B8EF),
              hintText: "Your Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
              ),
              prefixIcon: Icon(Icons.email),
            ),
          ),
        ),

        // PASSWORD
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 25),
          child: TextField(
            controller: passController,
            obscureText: true,
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 22, horizontal: 20),
              filled: true,
              fillColor: Color(0XFFC7B8EF),
              hintText: "Your Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
              ),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
        ),

        ElevatedButton(
          onPressed: () {
            String userValue = userController.text;
            String passValue = passController.text;

            //usermodel
            UserModel newUser = UserModel(
              username: userValue,
              password: passValue,
            );

            // print(" user : $userValue dan pass: $passValue");

            if (newUser.checkUserLogin()) {
              // jika autentikasi benar
              print(" Selamat user benar");
            } else {
              print(" Maaf user password salah");
            }

            print("user : $userValue dan pass : $passValue");

            final sb = SnackBar(content: Text('Hai $passValue'));
            ScaffoldMessenger.of(context).showSnackBar(sb);
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              backgroundColor: const Color(0XFFB6448A),
              fixedSize: const Size(350, 60)),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),

        Center(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegisterPage()));
              },
              child: const Text("Don't have an account ? Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold),)),
        )
      ],
    );
  }
}
