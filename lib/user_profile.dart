import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/login.dart';
import 'package:parking_slot_booking/search_page.dart';

import 'makeProfile.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
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
                            MaterialPageRoute(builder: (context) => Search()));
                      },
                      icon: Icon(Icons.arrow_back,color: Colors.white,),
                    ),
                    Center(child: Text("User Profile ", style:  GoogleFonts.acme(fontSize: 20, color: Colors.white)
                    )),
                  ],
                ),),
            )),

      ),
      body:makeProfileAvatar() ,
    );
  }
}
