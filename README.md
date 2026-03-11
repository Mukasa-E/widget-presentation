# ChoiceChip Widget Demo – Kigali Services Filter

Filter services by category using Flutter's `ChoiceChip` widget.

## Quick Start

```bash
cd widget_presentation
flutter pub get
flutter run
```

Run this on your phone, emulator, or web browser.

## What This Does

I built a simple app that lets you pick a service category (Hospital, Police, Restaurant, or Park) by tapping chips. Tap a chip and it highlights in orange. The app shows which category you picked.

Real-world use: Any app that needs users to pick one option from a list—filtering, settings, search results, etc.

## Screenshot

(widget_presentation/screenshots/demo.png)

Tap any chip to filter. The selected one turns orange.

## The Three Properties I'm Showing

### 1. `label` (the text on the chip)
This is what users see. In the code: `label: Text(category)` shows "Hospital", "Police", etc.  
Change the `label` → the chip text changes. Pretty straightforward.

### 2. `selected` (is it picked or not?)
`selected: true` means the chip is active; `selected: false` means it's not.  
I set it with: `selected: selectedCategory == category`  
Result: only the category you tapped gets highlighted.

### 3. `selectedColor` (the highlight color)
When a chip is `selected: true`, it uses `selectedColor: Colors.orange` to show orange.  
Change orange to blue or green → the selected chip changes color. That's it.

## The Code (in `lib/main.dart`)

All three properties are commented in the ChoiceChip widget—look for the `// PROPERTY X:` blocks. The logic is simple: store the user's pick in `selectedCategory`, and update it when they tap.

No weird patterns. No tutorials copy-pasted. Just `setState()` and conditional rendering.

