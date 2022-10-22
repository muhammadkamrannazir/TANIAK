import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taniak/App/config/route.dart';
import 'package:taniak/App/config/theme.dart';
import 'package:taniak/Screens/Splash-Screen/onbording.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taniak',
      theme: theme(),
      onGenerateRoute: Approuter.onGenerateRoute,
  home:const  Onbording(),
    );
  }
}
