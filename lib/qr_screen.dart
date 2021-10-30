import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/parked_in.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:random_string/random_string.dart';
import 'dart:math' show Random;
import 'cancel.dart';

class QrGenerated extends StatefulWidget {
  const QrGenerated({Key? key}) : super(key: key);

  @override
  _QrGeneratedState createState() => _QrGeneratedState();
}

class _QrGeneratedState extends State<QrGenerated> {
  final name = "Sumithra";
  final EAT =" 12.20";
  final EDT = "17.30";
  // secure random generator...implement in future//
  //var r = Random.secure();
  //randomBetween(10, 20,provider:CoreRandomProvider.from(r))//
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Your QR is generated!", style: GoogleFonts.acme(fontSize: 40, color: Colors.blue),),


              QrImage(
                data: randomAlphaNumeric (10),
                version: QrVersions.auto,
                size: 400.0,
              ),

              Padding(padding:  EdgeInsets.all( 20.0),
                child:
                Text("Name:"+name,style: GoogleFonts.alice(color: Colors.black, fontSize: 20),),),

              Padding(padding:  EdgeInsets.all( 20.0),
                child: Text("Estmated Arrival Time: "+EAT,style:GoogleFonts.alice
                  (color: Colors.black, fontSize: 20)),),

              Padding(padding:  EdgeInsets.all( 20.0),
                child: Text("Estmated Depature  Time: "+EDT,style: GoogleFonts.alice(color: Colors.black, fontSize: 20)),),
              Padding(
                padding: EdgeInsets.all( 40.0),
                child: ElevatedButton.icon(onPressed:  (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  ParkedIn()));
                }, icon: Icon(Icons.local_parking_outlined), label: Text("Park In!", style: GoogleFonts.actor(),)),
              ),
              Padding(
                padding: EdgeInsets.all( 40.0),
                child: ElevatedButton.icon(onPressed:  (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  Cancel()));
                }, icon: Icon(Icons.cancel), label: Text("Cancel Booking", style: GoogleFonts.actor(),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
