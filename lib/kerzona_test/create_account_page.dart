import 'package:flutter/material.dart';
import 'package:hello/kerzona_test/widgets/socialbutton_page.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const CustomTextField(
      {super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.white),
        filled: true,
        fillColor: Colors.grey[850],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        title: const Text(
          "edtraa",
          style: TextStyle(
              color: Color.fromRGBO(
                126,
                31,
                255,
                1,
              ),
              fontSize: 32),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(
                    color: Color.fromRGBO(112, 112, 112, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ))
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: ,
            children: [
              const Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTextField(
                    hintText: "full name", icon: Icons.account_circle),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTextField(hintText: "email", icon: Icons.email),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      prefixIcon: const Icon(Icons.lock, color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey[850],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      prefixIcon: const Icon(Icons.lock, color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey[850],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(
                      126,
                      31,
                      255,
                      1,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    minimumSize: const Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text("Create Account")),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Divider(
                    thickness: 5,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                  Text(
                    "or",
                    style: TextStyle(color: Color.fromRGBO(112, 112, 112, 1)),
                  ),
                  Divider(
                    thickness: 5,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SocialButton(
                  icon: Icons.g_mobiledata, text: "Sign up with google"),
              const SizedBox(
                height: 10,
              ),
              const SocialButton(
                  icon: Icons.facebook, text: "Sign up with Facebook"),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  "Log In",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(238, 238, 238, 1)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
