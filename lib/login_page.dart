import 'package:first/dashboard.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 40, 15, 50),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/4630.jpg",
                  height: 310,
                  width: 310,
                ),
              ),
              Center(
                child: const Text(
                  "All Shoes You Need Available Here",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Login to Start Shoping",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // focusColor: Colors.blueAccent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(
                              color: Colors.blueAccent, width: 1.3),
                        ),
                        hintText: "Input Your Email",
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 17,
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // focusColor: Colors.blueAccent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(
                              color: Colors.blueAccent, width: 1.3),
                        ),
                        hintText: "Input Your Password",
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15,
                        ),
                        prefixIcon: Icon(
                          Icons.password_rounded,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent, fixedSize: Size(400, 50)),
                      onPressed: () {
                        print("submit");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()),
                        );
                      },
                      child: Text("Submit"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
