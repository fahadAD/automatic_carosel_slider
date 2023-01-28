import 'dart:async';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/main5.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex=0;
  Timer? timer;
  PageController pageController=PageController(
    initialPage: 0
  );

  @override
  void initState() {
    timer=Timer.periodic(Duration(seconds: 4,), (timer) {
      if(pageIndex<=4){
        pageIndex++;
      }else{
        pageIndex=0;

      }
      pageController.animateToPage(pageIndex, duration: Duration(milliseconds: 350), curve: Curves.easeIn);
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    timer=null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;


    List<Widget> _demo=[
      Card(
        child:  Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/fahad.jpg",
                  width: size.width*0.9,
                  height: 180,
                  fit: BoxFit.fill,

                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: IconButton(

                  color: Colors.amber,
                  onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 30,color: Colors.black,)),
            )
          ],
        ),
      ),
      Card(
        child:  Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/fahad.jpg",
                  width: size.width*0.9,
                  height: 180,
                  fit: BoxFit.fill,

                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: IconButton(

                  color: Colors.amber,
                  onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 30,color: Colors.black,)),
            )
          ],
        ),
      ),
      Card(
        child:  Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/fahad.jpg",
                  width: size.width*0.9,
                  height: 180,
                  fit: BoxFit.fill,

                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: IconButton(

                  color: Colors.amber,
                  onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 30,color: Colors.black,)),
            )
          ],
        ),
      ),
      Card(
        child:  Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/fahad.jpg",
                  width: size.width*0.9,
                  height: 180,
                  fit: BoxFit.fill,

                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: IconButton(

                  color: Colors.amber,
                  onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 30,color: Colors.black,)),
            )
          ],
        ),
      ),
    ];
    return Scaffold(
      appBar:  Constance().NewAppbar("GridView Apps" ),


      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 180,
              width: double.infinity,
              child: PageView(

                controller: pageController,
                children: _demo,

                onPageChanged: (index){
                  setState(() {
                    pageIndex=index;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            CarouselIndicator(
               color: Colors.orange,
              activeColor: Colors.lightGreenAccent,
              count: _demo.length,
              index: pageIndex,
            ),
            SizedBox(height: 20,),



              GridView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 11,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,

                  ), itemBuilder: (context,indext){

                    return Card(
                      child:  SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(

                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/sami.jpg",
                                  width: size.width*0.9,
                                   fit: BoxFit.fill,

                                ),
                              ),
                            ),
                            Row(children: [
                              TextButton(onPressed: (){},child: Text("T-Shirt(456A)\nPrice= \$128",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold, ),)),
                              ElevatedButton(onPressed: (){}, child: Icon(Icons.shopping_cart,size: 26,))],)
                          ],
                        ),
                      ),
                    );
              }),


          ],
        ),
      ),
    );
  }
}
