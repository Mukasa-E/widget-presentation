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
                  // ============================================================
                  // PROPERTY 1: label
                  // Purpose: Displays the text/widget content inside the chip
                  // In this demo: Shows category names (Hospital, Police, etc.)
                  // Developer use case: Tell users what each chip represents
                  // ============================================================
                  label: Text(category),

                  // ============================================================
                  // PROPERTY 2: selected (Boolean)
                  // Purpose: Determines if the chip is in a selected state
                  // In this demo: True when selectedCategory matches this chip
                  // Visual result: Selected chip turns orange; unselected stays gray
                  // Developer use case: Radio-button-style selection UI pattern
                  // ============================================================
                  selected: selectedCategory == category,

                  // ============================================================
                  // PROPERTY 3: selectedColor (Color)
                  // Purpose: Background color when selected is true
                  // In this demo: Colors.orange highlights the chosen category
                  // Visual result: Immediate visual feedback of user's selection
                  // Developer use case: Brand your app; make selections obvious
                  // ============================================================
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
