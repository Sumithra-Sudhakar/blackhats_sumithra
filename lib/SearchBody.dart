import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'choosing_loc.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(

            child: Padding(
              padding: EdgeInsets.all( 50.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all( 30.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.hotel),

                        ),
                        Text("HOTELS", style: GoogleFonts.alice())
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all( 30.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Choice()));
                          },
                          icon: Icon(Icons.emoji_food_beverage_outlined),

                        ),
                        Text("RESTAURANTS", style: GoogleFonts.alice())
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all( 30.0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.shopping_bag),

                        ),
                        Text("SHOPPING", style: GoogleFonts.alice())
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
