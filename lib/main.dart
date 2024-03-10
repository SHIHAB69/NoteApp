
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flut_test/views/signInScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
       ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyDrGIZXoKjifT9LPyxmtAdZHrRvmxS2gEA',
              appId: '1:643652532883:android:454a9ab4530cebda8d6b66',
              messagingSenderId: '643652532883',
              projectId: 'noteapp-76019'))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
