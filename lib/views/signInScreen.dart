import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:flut_test/views/forgotPasswordScreen.dart';
import 'package:flut_test/views/signUpScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text("Login"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 300,
              child: Lottie.asset("assets/login.json"),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  hintText: 'Email',
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.key_rounded),
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: GestureDetector(
                onTap: (){
                  Get.to(()=>const ForgotPasswordScreen());
                },
                child: const Card(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Forgot Password?"),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
              Get.to(const SignUpScreen());
              },
              child: Container(
                child: const Card(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Don't have an account? SignUp"),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
