import 'package:flutter/material.dart';
import 'package:languageui/units.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                      ),
                      color: Colors.blueGrey,
                      image: DecorationImage(
                        image: AssetImage("images/logo.png"),
                        fit: BoxFit.cover)
                    ),
                      
                    
                  ),
                  Positioned(
                    top: 40,
                    left: 10,
                    right: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){
                      Navigator.of(context).pop();

                            }, icon:Icon(Icons.arrow_back_ios_new_outlined,
                            color: Colors.white,size: 30,) ),
                            CircleAvatar(
        
                            ),
                            
                          ],
                        ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    child: Column(
                      children: [
                        Text("ENGLISH",style: TextStyle(
                          color:  Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),),
                        Text("MAIN UNITS",style: TextStyle(
                          color: Colors.white,fontSize: 25,
                          fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Units(title: 'UNIT1', suptitle: 'Intoduction', precent: 0.8, precentValue: '%80', color: Colors.blueGrey,),
              Units(title: 'UNIT2', suptitle: 'Jobs and School', precent: 0.9, precentValue: '%90', color: Colors.brown,),
              Units(title: 'UNIT3', suptitle: 'Food and Drinks', precent: 0.7, precentValue: '%70', color: const Color.fromARGB(255, 115, 185, 220),),
              Units(title: 'UNIT4', suptitle: 'Places and Directions', precent: 0.5, precentValue: '%50', color: const Color.fromARGB(255, 75, 16, 103),),
              Units(title: 'UNIT5', suptitle: 'LifeStyle', precent: 1.0, precentValue: '%100', color: const Color.fromARGB(255, 210, 102, 159),),
              Units(title: 'UNIT6', suptitle: 'Technology', precent: 0.87, precentValue: '%87', color: const Color.fromARGB(255, 165, 219, 84),),
              Units(title: 'UNIT7', suptitle: 'Travel and Transport', precent: 0.8, precentValue: '%80', color: Colors.blueGrey,),
              
          ],
        ),
      ),
    );
  }
}