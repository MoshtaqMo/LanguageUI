import 'package:flutter/material.dart';
import 'units_page.dart';

class UnitDetails {
  static void navigateToUnit(BuildContext context, String unitTitle, String unitSubtitle, 
      double unitProgress, Color unitColor) {
    
    // Define chapters based on unit
    List<Map<String, dynamic>> chapters = _getChaptersForUnit(unitTitle);
    
    // Define exercises based on unit
    List<Map<String, dynamic>> exercises = [
      {
        'icon': Icons.menu_book,
        'label': 'Grammar',
        'color': unitColor,
      },
      {
        'icon': Icons.hearing,
        'label': 'Listening',
        'color': unitColor.withOpacity(0.8),
      },
      {
        'icon': Icons.edit_note,
        'label': 'Writing',
        'color': unitColor.withOpacity(0.6),
      },
    ];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UnitsPage(
          unitTitle: unitTitle,
          unitSubtitle: unitSubtitle,
          unitProgress: unitProgress,
          unitColor: unitColor,
          chapters: chapters,
          exercises: exercises,
        ),
      ),
    );
  }

  static List<Map<String, dynamic>> _getChaptersForUnit(String unitTitle) {
    switch (unitTitle) {
      case 'UNIT1':
        return [
          {'title': 'Chapter 1', 'subtitle': 'Basic Greetings', 'progress': 1.0},
          {'title': 'Chapter 2', 'subtitle': 'Numbers', 'progress': 0.8},
          {'title': 'Chapter 3', 'subtitle': 'Colors', 'progress': 0.6},
        ];
      case 'UNIT2':
        return [
          {'title': 'Chapter 1', 'subtitle': 'School Vocabulary', 'progress': 1.0},
          {'title': 'Chapter 2', 'subtitle': 'Job Interviews', 'progress': 0.9},
          {'title': 'Chapter 3', 'subtitle': 'Workplace Communication', 'progress': 0.8},
        ];
      case 'UNIT3':
        return [
          {'title': 'Chapter 1', 'subtitle': 'Food Vocabulary', 'progress': 0.7},
          {'title': 'Chapter 2', 'subtitle': 'Restaurant Dialogues', 'progress': 0.6},
          {'title': 'Chapter 3', 'subtitle': 'Cooking Terms', 'progress': 0.5},
        ];
      case 'UNIT4':
        return [
          {'title': 'Chapter 1', 'subtitle': 'City Places', 'progress': 0.5},
          {'title': 'Chapter 2', 'subtitle': 'Directions', 'progress': 0.4},
          {'title': 'Chapter 3', 'subtitle': 'Transportation', 'progress': 0.3},
        ];
      case 'UNIT5':
        return [
          {'title': 'Chapter 1', 'subtitle': 'Daily Routines', 'progress': 1.0},
          {'title': 'Chapter 2', 'subtitle': 'Hobbies', 'progress': 1.0},
          {'title': 'Chapter 3', 'subtitle': 'Health & Fitness', 'progress': 1.0},
        ];
      case 'UNIT6':
        return [
          {'title': 'Chapter 1', 'subtitle': 'Computer Basics', 'progress': 0.87},
          {'title': 'Chapter 2', 'subtitle': 'Internet Terms', 'progress': 0.75},
          {'title': 'Chapter 3', 'subtitle': 'Social Media', 'progress': 0.65},
        ];
      case 'UNIT7':
        return [
          {'title': 'Chapter 1', 'subtitle': 'Travel Planning', 'progress': 0.8},
          {'title': 'Chapter 2', 'subtitle': 'Airport Vocabulary', 'progress': 0.7},
          {'title': 'Chapter 3', 'subtitle': 'Hotel Stay', 'progress': 0.6},
        ];
      default:
        return [
          {'title': 'Chapter 1', 'subtitle': 'Introduction', 'progress': 0.0},
          {'title': 'Chapter 2', 'subtitle': 'Basics', 'progress': 0.0},
          {'title': 'Chapter 3', 'subtitle': 'Advanced', 'progress': 0.0},
        ];
    }
  }
} 