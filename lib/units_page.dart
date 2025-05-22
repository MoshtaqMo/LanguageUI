import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class UnitsPage extends StatelessWidget {
  final String unitTitle;
  final String unitSubtitle;
  final double unitProgress;
  final Color unitColor;
  final List<Map<String, dynamic>> chapters;
  final List<Map<String, dynamic>> exercises;

  const UnitsPage({
    super.key,
    required this.unitTitle,
    required this.unitSubtitle,
    required this.unitProgress,
    required this.unitColor,
    required this.chapters,
    required this.exercises,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header Section
          Container(
            padding: EdgeInsets.only(top: 40, left: 10, right: 20),
            height: 220,
            decoration: BoxDecoration(
              color: unitColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white)
                    ),
                    Text(unitTitle.split('UNIT')[1], 
                      style: TextStyle(color: Colors.white, fontSize: 40)
                    ),
                    CircleAvatar()
                  ],
                ),
                SizedBox(height: 30),
                // Unit Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(unitTitle, 
                          style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)
                        ),
                        Text(unitSubtitle, 
                          style: TextStyle(color: Colors.white, fontSize: 18)
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    CircularPercentIndicator(
                      radius: 25,
                      lineWidth: 5,
                      percent: unitProgress,
                      center: Text("${(unitProgress * 100).toInt()}%", 
                        style: TextStyle(color: Colors.white)
                      ),
                      progressColor: Colors.white,
                      backgroundColor: Colors.white24,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Chapter Progress Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: ListView(
                children: [
                  Column(
                    children: chapters.map((chapter) => _chapterProgress(
                      chapter['title'],
                      chapter['subtitle'],
                      chapter['progress'],
                    )).toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "General Exercises ${unitTitle}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: unitColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: exercises.map((exercise) => _exerciseCard(
                      exercise['icon'],
                      exercise['label'],
                      exercise['color'] ?? unitColor,
                    )).toList(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _chapterProgress(String chapter, String title, double percent) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(chapter, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              Text(title),
              Spacer(),
              Text("${(percent * 100).toInt()}%"),
            ],
          ),
          SizedBox(height: 5),
          LinearPercentIndicator(
            lineHeight: 6,
            percent: percent,
            backgroundColor: Colors.grey.shade300,
            progressColor: unitColor,
            barRadius: Radius.circular(8),
          ),
        ],
      ),
    );
  }

  Widget _exerciseCard(IconData icon, String label, Color bgColor) {
    return Container(
      width: 90,
      height: 100,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.white),
          SizedBox(height: 10),
          Text(label, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
