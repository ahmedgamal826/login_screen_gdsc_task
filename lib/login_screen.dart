import 'package:flutter/material.dart';
import 'package:login_page_task/custom_text_form_filed.dart';
import 'package:login_page_task/home_page.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> form_key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Login Screen',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Form(
        key: form_key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100, child: Image.asset('assets/login.png')),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Email',
              validateMessage: 'Email Field is required',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: passwordController,
              hintText: 'Password',
              validateMessage: 'Password Field is required',
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                if (form_key.currentState!.validate() &&
                    emailController.text == 'ahmed@gmail.com' &&
                    passwordController.text == '12345') {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                    'Login Suceesfully',
                    style: TextStyle(fontSize: 25),
                  )));
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                    'Login Failed',
                    style: TextStyle(fontSize: 25),
                  )));
                }
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
