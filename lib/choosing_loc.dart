import 'package:flutter/material.dart';
import 'package:parking_slot_booking/parked_in.dart';
import 'package:parking_slot_booking/qr_screen.dart';
import 'package:parking_slot_booking/search_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/slot.dart';

class Choice extends StatefulWidget {
  const Choice({Key? key}) : super(key: key);

  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

    flexibleSpace: SafeArea(
    child: Center(
      child: Container(
      padding: EdgeInsets.only(right: 16),
      child:Row(
        children: [
          IconButton(
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Search()));
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          ),
          Center(child: Text("Enter the respective values to get best results!", style:  GoogleFonts.acme(fontSize: 20, color: Colors.white)
          )),
        ],
      ),),
    )),

      ),
      body: Container(
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(50.0),
            children: [
           Padding(
             padding: EdgeInsets.all( 15.0),
            child: TextFormField(
            decoration: const InputDecoration(
            border: UnderlineInputBorder(),
              labelText: 'Enter radius with which you need a parking slot (in meters) '
        ),
      ),
          ),
     Padding(padding:  EdgeInsets.all(15.0),
     child:  TextFormField(
       decoration: const InputDecoration(
           border: UnderlineInputBorder(),
           labelText: 'Expected Arrival Time'
       ),
     ),),
       Padding(
         padding:EdgeInsets.all(15.0),
        child: TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Expected Depature Time'
          ),
        ),
      ),
               Padding
                 (padding: EdgeInsets.all(24.0),
                   child: ElevatedButton.icon(onPressed:  (){
                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) =>  Slot()));
                   }, icon: Icon(Icons.done_all), label: Text("DONE")))
            ],
          ),
        ),
      ),
    );
  }
}
