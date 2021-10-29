import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_slot_booking/parked_in.dart';

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

              Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAABlBMVEX///8AAABVwtN+AAACqUlEQVR4nO3RQXLjMBBDUev+l85yKqwGgiYlm/R8rOSI3cRTXi9CCCGEEEIIIYQQsm2uv/PvnF8wnBteTM76VggRIjxIGLwdzgUX3zPb74wQIcKdhdV11duH/a1WCBEi/FZhcJMca7kQIkT43wmHI48IJ1shRIjwIGH/JjlRlQlm+62SIERYTiC8rVWS6+9UVd/xFLRCiBDhGcJ+PN3fvjL7viBEiPDhvsPfqjufI8mfVxGECBEeJOzvXzHIWXmutQ8hQoSbClv1W/taBau3ckuMG1Yj7O6ruiFEeIPQg6vZ6uJgXzpb+XtMhAgRfl4oG6V+/yL4MNVENYsQIcLDhXJXWjUweL9kygUIESI8V9jC+du9Jmh+5z9NkhAiRPgO4bDGL6zODU/BAn+b9M+CESJE+HmhvD1otEKSt6VvESJEeJDwUqnOBUzf0l8uF/hqCBEiPEMoq8rbg9ItsNRMkBAiRLidcLhE/vQT1ayvGnw2+ckncLJlOoEQIcLi50R8S4+rDvvmvrT8JktMhAgRflQoW1aNqheBwfv95Us4hAgRbiKUl8it1cWtDxPEb0GIEOFBQkkKClYVfI/WZj+LECHC04TpU6uRJ8l9w9NweIKJECHCTYR++EaDv1zi0n0IESLcVCg1kwsnwcsfulcwaOQXIHRjCFfz1ULZraoqn2Rfv8/jqn4IESI8SOjLrBT0VavSssssDiFChJsI01T7Wwbvl4anXf4mhC+EwwTCheY+rQnJ9AvkhNyCECHC04TB2+EpeCH3tWbXrQgRItxJeP1O+vZG0hUmxiFEiPAwYTXRN7T8wQRChAi/UBisXgYHW2IcQoQItxMGdwZPQ8Hqs7VK+y0IESI8SOgznKsKyongs8mv45siRIjwICEhhBBCCCGEEEIIeXt+AGYmQjfYIso+AAAAAElFTkSuQmCC",
                  height: 100,width:100),

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
