# ChoiceChip Widget - Kigali Services Filter Demo

**Widget:** `ChoiceChip` – A Material Design chip widget that allows users to select a single option from a set of choices.

## Purpose
This demo showcases the ChoiceChip widget in a realistic scenario: filtering service categories (Hospital, Police, Restaurant, Park) in the Kigali City Services Directory mobile app. Users tap a category chip to select it, and the app displays their selection.

## Run Instructions
1. Install Flutter dependencies:
   ```bash
   cd widget_presentation
   flutter pub get
   ```

2. Run the app on an emulator or connected device:
   ```bash
   flutter run
   ```

## Three Key Properties Demonstrated

### 1. **selected** (Boolean)
- **What it does:** Determines whether the chip is currently selected (true/false)
- **Visual effect:** When `selected: true`, the chip displays with `selectedColor` background (orange in this demo)
- **Why developers use it:** To visually indicate which option the user has chosen, essential for radio-button-style selection UI

### 2. **selectedColor** (Color)
- **What it does:** Sets the background color of the chip when `selected` is true
- **Visual effect:** Changes chip background from default gray to the specified color (orange `Colors.orange` in this demo)
- **Why developers use it:** To brand category filters or visually distinguish selected items, improving UX clarity

### 3. **label** (Widget)
- **What it does:** Displays the text or widget content inside the chip
- **Visual effect:** Shows the category name ("Hospital", "Police", "Restaurant", "Park") as readable text on the chip
- **Why developers use it:** To communicate the chip's purpose to users; can be Text, Icon, or any Widget

## Screenshot
[]

## Technologies
- Flutter
- Dart
- Material Design

## Git Commits
See commit history for meaningful development steps, including:
- Initial project setup
- ChoiceChip implementation with property documentation
- UI refinements and testing

