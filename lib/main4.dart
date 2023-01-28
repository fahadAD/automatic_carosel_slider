import 'package:flutter/material.dart';
import 'package:untitled8/main5.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

 List<int> cartItem=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Constance().NewAppbar("Cart Lits"),
      
      body: SingleChildScrollView(
        child: Column(
          children: [

 ListView.builder(
   itemCount: 9,
   primary: false,
   shrinkWrap: true,

   itemBuilder: (BuildContext context, int index) {
   cartItem.add(0);

   return  Padding(
     padding: const EdgeInsets.all(3.0),
     child: Card(
           elevation:40,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(children: [

                  CircleAvatar(
           radius:50,
                    foregroundImage: AssetImage("assets/images.jpg",

                    ),
                  ),
               SizedBox(width: 10,),
               Column(children: [

                 Text("Head Phone(D45A)",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange,fontSize: 20),),
                 Text("Price= \$89",style: TextStyle(fontWeight: FontWeight.bold, ),),

               ],),

              Column(children: [
                IconButton(onPressed: (){
                  setState(() {
                     cartItem[index]++;
                  });
                }, icon: Icon(Icons.add_circle,color: Colors.red,size: 30,)),
                Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey
                    ),
                    child: Center(child: Text(cartItem[index].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))),
                IconButton(onPressed: (){
                  cartItem[index]--;
                }, icon: Icon(Icons.indeterminate_check_box_outlined,color: Colors.green,size: 30,)),

              ],)
           ],),
         ),
     ),
   );
 },),


















            // Image.asset("assets/images.jpg",
            //   height: 100,
            //   width: 100,
            //   fit: BoxFit.fill,)








          ],
        ),
      ),
    );
  }
}
