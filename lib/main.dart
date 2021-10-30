import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parking_slot_booking/auth_service.dart';

import 'package:parking_slot_booking/choosing_loc.dart';

import 'package:parking_slot_booking/login.dart';
import 'package:parking_slot_booking/parked_in.dart';
import 'package:parking_slot_booking/parked_out.dart';

import 'package:parking_slot_booking/qr_screen.dart';
import 'package:parking_slot_booking/search_page.dart';
import 'package:parking_slot_booking/sign_up.dart';
import 'package:provider/provider.dart';

import 'auth_service.dart';
import 'wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/login': (context) => Login(),
          '/register': (context) => SignUp(),
        },
        ),
    );
  }
}
