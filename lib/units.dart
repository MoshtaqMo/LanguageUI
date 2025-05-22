import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'unit_details.dart';

class Units extends StatelessWidget {
  final String title;
  final String suptitle;
  final double precent;
  final String precentValue;
  final Color color;
  
  const Units({
    super.key, 
    required this.title, 
    required this.suptitle, 
    required this.precent, 
    required this.precentValue, 
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UnitDetails.navigateToUnit(context, title, suptitle, precent, color);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        height: 89,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              // Text Column
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    suptitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
      
              const Spacer(), // Pushes the progress indicator to the right
      
              // Circular Percent Indicator
              CircularPercentIndicator(
                radius: 25.0,
                lineWidth: 6.0,
                percent: precent,
                center: Text(
                  precentValue,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.white30,
                progressColor: Colors.white,
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
