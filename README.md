1. BMI Calculator
///////////////////////////////////////////////////////
2. Introduction
The BMI Calculator is a Flutter mobile application that calculates a person’s Body Mass Index (BMI) based on their height and weight.
It is a simple, beginner-friendly project to practice Flutter UI design and logic implementation.
///////////////////////////////////////////////////////
3. Features
Enter height and weight in a user-friendly interface.
Calculate BMI with a single button click.
Display result along with BMI category (Underweight, Normal, Overweight, Obese).
Responsive design for different screen sizes.
/////////////////////////////////////////////////////
4. Project Structure
bmi_calculator/
│
├── android/           # Android-specific configuration files
├── ios/               # iOS-specific configuration files
├── lib/               # Main Dart code
│   ├── main.dart      # Entry point of the app
│   ├── constants.dart # App-wide constants (colors, text styles, etc.)
│   ├── components/    # Reusable UI components
│   │   ├── bottom_button.dart
│   │   ├── icon_content.dart
│   │   └── reusable_card.dart
│   └── screens/       # App screens / pages
│       ├── input_page.dart
│       └── result_page.dart
│
├── test/              # Unit and widget tests
│
├── pubspec.yaml       # Flutter dependencies and project config
├── README.md          # Project documentation
└── .gitignore         # Files/folders to ignore in Git
/////////////////////////////////////////////////////////////
6. Screenshots
![bmi-calc-demo](https://github.com/user-attachments/assets/a8dba3c2-eb84-4695-a295-e3cea4d3b8d3)

cd bmi_calculator
flutter pub get
flutter run
