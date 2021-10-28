import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/search_page.dart';


 class ParkedOut extends StatelessWidget {
   const ParkedOut({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(


     body:   Center(
     child: Column(

     mainAxisAlignment: MainAxisAlignment.center,

     children: [
     Padding(
     padding: EdgeInsets.all(80.0),
     child: Text("Drive Safe! Have a nice day!",style: GoogleFonts.alfaSlabOne(fontSize: 40),)),


     ElevatedButton.icon(onPressed:  (){
       Navigator.of(context).push(
           MaterialPageRoute(builder: (context) =>  Search()));
     }, icon: Icon(Icons.airport_shuttle_sharp), label: Text("Book another parking"))
     ],

     ),
     ),

     );
   }
 }
 

