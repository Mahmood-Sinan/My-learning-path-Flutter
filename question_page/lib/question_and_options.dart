import 'package:flutter/material.dart';

class QuizQuestion extends StatefulWidget {
  const QuizQuestion({super.key});

  @override
  _QuizQuestionState createState() => _QuizQuestionState();
}

class _QuizQuestionState extends State<QuizQuestion> {
  int? selectedOptionIndex; // Stores the index of the selected option
  int correctAnswerIndex = 2; // Index of the correct answer (change as needed)

  List<String> options = [
    "Option A",
    "Option B",
    "Option C", // Correct Answer
    "Option D",
  ];

  void checkAnswer(int index) {
    setState(() {
      selectedOptionIndex = index; // Update selected option
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz App")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "What is the capital of France?", // Change the question as needed
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            // Generate the options dynamically
            for (int i = 0; i < options.length; i++) _buildOption(i),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(int index) {
    bool isSelected = selectedOptionIndex != null;
    bool isCorrect = index == correctAnswerIndex;
    bool isWrong = isSelected && selectedOptionIndex == index && !isCorrect;

    return GestureDetector(
      onTap: () {
        if (selectedOptionIndex == null)
          checkAnswer(index); // Prevent multiple clicks
      },
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: isSelected
            ? (isCorrect
                ? 1.0
                : (isWrong ? 1.0 : 0.4)) // Adjust opacity based on selection
            : 1.0,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: isWrong
                ? Colors.red // Wrong answer turns red
                : Color.fromARGB(255, 216, 255, 243), // Default color
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Text(
            options[index],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
      ),
    );
  }
}
