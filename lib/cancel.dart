import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/search_page.dart';

class Cancel extends StatefulWidget {
  const Cancel({Key? key}) : super(key: key);

  @override
  _CancelState createState() => _CancelState();
}

class _CancelState extends State<Cancel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Cancelled"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Reason for cancellation '
              ),
            ),
          ),
          Padding
            (padding: EdgeInsets.all(24.0),
              child: ElevatedButton.icon(onPressed:  (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  Search()));
              }, icon: Icon(Icons.ten_k), label: Text("SUBMIT")))
        ],
      ),
    );
  }
}

