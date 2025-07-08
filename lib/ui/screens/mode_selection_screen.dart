import 'package:flutter/material.dart';

class MoodSelectionScreen extends StatelessWidget {
  MoodSelectionScreen({super.key});
  final List<String> options = [
    "I'm feeling good!",
    "I'm okay, not great, not bad.",
    "I'm feeling a bit low.",
    "I'm feeling really down today.",
  ];

  final int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text('Step 1 out of 5',
                  style: TextStyle(color: Colors.grey[600], fontSize: 12)),
            ),
            SizedBox(height: 16),
            LinearProgressIndicator(
              value: 0.2,
              backgroundColor: Colors.grey[300],
              color: Color(0xFF5A55CA),
              minHeight: 8,
            ),
            SizedBox(height: 32),
            Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Let's understand how you're feeling today.",
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 24),
            ...options.asMap().entries.map((entry) {
              int idx = entry.key;
              String text = entry.value;
              bool isSelected = idx == selectedIndex;
              return Container(
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.green[100] : Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text(text),
                  onTap: () {
                    // Handle selection state
                  },
                ),
              );
            }),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.arrow_forward),
                label: Text("Next"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5A55CA),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Go to next step
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
