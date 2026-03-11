import 'package:flutter/material.dart';

void main() {
  runApp(const KigaliChoiceChipDemoApp());
}

class KigaliChoiceChipDemoApp extends StatelessWidget {
  const KigaliChoiceChipDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChoiceChip Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ChoiceChipDemoScreen(),
    );
  }
}

class ChoiceChipDemoScreen extends StatefulWidget {
  const ChoiceChipDemoScreen({super.key});

  @override
  State<ChoiceChipDemoScreen> createState() => _ChoiceChipDemoScreenState();
}

class _ChoiceChipDemoScreenState extends State<ChoiceChipDemoScreen> {
  final List<String> categories = ['Hospital', 'Police', 'Restaurant', 'Park'];

  String selectedCategory = 'Hospital';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kigali Services Filter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a service category',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: categories.map((category) {
                return ChoiceChip(
                  // PROPERTY 1: label - The text displayed in the chip
                  // Displays the category name ("Hospital", "Police", etc.)
                  // This is what users see and helps them understand each option
                  label: Text(category),

                  // PROPERTY 2: selected - Boolean that determines if chip is selected
                  // When true, the chip shows in selectedColor; when false, shows default style
                  // This visually indicates which category the user has currently chosen
                  selected: selectedCategory == category,

                  // PROPERTY 3: selectedColor - The background color when selected is true
                  // Changes from default gray to orange to visually highlight the chosen category
                  // Improves UX by making the user's selection obvious at a glance
                  selectedColor: Colors.orange,

                  onSelected: (isSelected) {
                    if (isSelected) {
                      setState(() {
                        selectedCategory = category;
                      });
                    }
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Selected category: $selectedCategory',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
