import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/qr_screen.dart';

class Slot extends StatefulWidget {
  const Slot({Key? key}) : super(key: key);

  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  final slot = "10";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Slot Allocated",style: GoogleFonts.alfaSlabOne(),),
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
                child: Text(slot, style: GoogleFonts.alfaSlabOne(fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton.icon(onPressed:  (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  QrGenerated()));
                }, icon: Icon(Icons.money), label: Text("confirm to pay")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
