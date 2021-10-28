import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/parked_out.dart';


class ParkedIn extends StatefulWidget {
  const ParkedIn({Key? key}) : super(key: key);

  @override
  _ParkedInState createState() => _ParkedInState();
}

class _ParkedInState extends State<ParkedIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:   Center(
        child: Column(
           
          mainAxisAlignment: MainAxisAlignment.center,

   children: [
      Padding(
        padding: EdgeInsets.all(80.0),
          child: Text("You are in!",style: GoogleFonts.alfaSlabOne(fontSize: 45),)),


ElevatedButton.icon(onPressed:  (){
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) =>  ParkedOut()));
}, icon: Icon(Icons.airport_shuttle_sharp), label: Text("Exit Parking slot"))
   ],

   ),
      ),

    );
  }
}

