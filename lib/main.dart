import 'package:flutter/material.dart';
import 'package:parking_slot_booking/login.dart';
import 'package:parking_slot_booking/parked_in.dart';
import 'package:parking_slot_booking/parked_out.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Login(),
    ),
  ));
}