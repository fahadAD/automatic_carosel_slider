import 'package:flutter/material.dart';
import 'package:untitled8/main5.dart';
class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List <String> catagoryItems=[
    "FaceWash","Soup","pant","Shirt","T Shirt","Bealt","Punjabi","Paijama","Watch","Ice Ceram",
  ];
  int? indexItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Constance().NewAppbar("Favourite"),


     body: Column(
       children: [

         SizedBox(
           height: 100,
           child: ListView.builder(
             primary: false,
             shrinkWrap: true,
             scrollDirection: Axis.horizontal,

             itemBuilder: (BuildContext context, int index) {

               return  GestureDetector(
                 onTap: (){
                   setState(() {
                     indexItems=index;
                   });
                 },
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     color: indexItems==index?Colors.black:Colors.teal,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(catagoryItems[index],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
               );
           },),
         ),

         indexItems==0?Center(child: Text("FaceWash"),):
         indexItems==1?Center(child: Text("Soup"),):
         indexItems==2?Center(child: Text("pant"),):
         indexItems==3?Center(child: Text("Shirt"),):
         indexItems==4?Center(child: Text("T Shirt"),):
         indexItems==5?Center(child: Text("Bealt"),):
         indexItems==6?Center(child: Text("Punjabi"),):
         indexItems==7?Center(child: Text("Paijama"),):
         indexItems==8?Center(child: Text("Watch"),):Container(),

       ],
     ),

    );
  }
}
