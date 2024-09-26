import 'package:flutter/material.dart';
import 'package:office_task/ui/auth/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sign Up",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text("Login", style: TextStyle(color: Colors.green)))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                height: 50,
                // width: 343,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              SizedBox(
                height: 50,
                // width: 343,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              SizedBox(
                height: 50,
                // width: 343,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: TextButton(
                      child: Text(
                        "Show",
                        style: TextStyle(color: Colors.green),
                      ),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool) {
                      setState(() {
                        checkBoxValue = !checkBoxValue;

                        if (checkBoxValue) {
                          print("true"); //true logic goes here
                        } else {
                          print("false"); //false logic goes here
                        }
                      });
                    },
                  ),
                  Flexible(
                    child: Text(
                      'I would like to receive your newsletter and other promotional information.',
                      // overflow: TextOverflow.ellipsis,
                      // softWrap: true,
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              TextButton(
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(color: Colors.green),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
