import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/qr_screen.dart';
import 'dart:math';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    final slot = Random().nextInt(50);
    return  Scaffold(
      appBar: AppBar(
        title: Text("Amount to  be paid",style: GoogleFonts.alfaSlabOne(),),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('$slot', style: GoogleFonts.alfaSlabOne(fontSize: 80),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton.icon(onPressed:  (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  QrGenerated()));
                }, icon: Icon(Icons.money), label: Text("PAY")),
              )
            ],
          ),
        ),
      ),
    );
  }
}