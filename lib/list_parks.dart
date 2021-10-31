import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/slot.dart';

import 'choosing_loc.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
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
                            MaterialPageRoute(builder: (context) => Choice()));
                      },
                      icon: Icon(Icons.arrow_back,color: Colors.white,),
                    ),
                    Center(child: Text("Select the area", style:  GoogleFonts.acme(fontSize: 20, color: Colors.white)
                    )),
                  ],
                ),),
            )),

      ),
      body:ListView(
        padding: EdgeInsets.all( 20.0),
        children: [
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 1", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),

          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 2", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 3", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 4", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 5", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 6", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 7", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 8", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 9", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 10", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
          ListTile(leading: Icon(Icons.car_rental),
            contentPadding: EdgeInsets.all(10.0),
            title: Text("Area 11", style:GoogleFonts.abel(fontSize: 12)),
            subtitle: Text("20 slots available",style:GoogleFonts.abel(fontSize: 8)),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  Slot()));
            },
          ),
        ],
      ),
    );
  }
}
