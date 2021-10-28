import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Icon customIcon = Icon(Icons.search);
  Widget customSearchBar = Text("where do you want to go today?", style: GoogleFonts.alfaSlabOne(),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:  (){
            setState(() {
              if (customIcon.icon == Icons.search){
                customIcon = Icon(Icons.cancel);
                customSearchBar = const ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'type in the place...',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );


              }
              else{
                customIcon = Icon(Icons.search);
                customSearchBar = Text("where are you going today?", style: GoogleFonts.alfaSlabOne(),);
              }
            });

          }, icon:customIcon),
        ],
        centerTitle: true,
      ),
      body:SearchBody(),
    );
  }
}

Container SearchBody(){
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
                        onPressed: (){},
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