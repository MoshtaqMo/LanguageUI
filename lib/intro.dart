import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.white,
        child: Column(
          
          children: [
            Stack(
              children: [
                Container(
                  height: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(150),
                    ),
                    color: Colors.blueGrey,
                    image: DecorationImage(image: AssetImage("images/intro.png"),fit: BoxFit.cover)
                  ),
                    
                  
                ),
                Positioned(
                  top: 60,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu,color: Colors.white,size: 30,),
                          CircleAvatar(

                          ),
                          
                        ],
                      ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Text("Easy and\n quick\nLearn\nLanguage\nonline!",style: TextStyle(color: const Color.fromARGB(255, 219, 93, 93),fontSize: 70,fontWeight: FontWeight.bold),))
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "lesson");
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.blueGrey),
            ),
            
             child: Text("Start",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
             SizedBox(height: 10,),

Expanded(child:Container(
  decoration: BoxDecoration(
    color: Colors.blueGrey,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(150)
    )
  ),
) )          ],
        ),
      ),
    );
  }
}