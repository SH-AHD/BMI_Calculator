# BMI Calculator

A sleek, modern BMI (Body Mass Index) Calculator built with **Flutter**. This app helps users calculate their body mass index based on weight and height, providing health-related insights and feedback.

## 📱 Screenshots

| Input Screen | Healthy Result |
| --- | --- | 
| <img src="https://github.com/user-attachments/assets/a4baffe3-6da1-4f9c-b5a4-7f0328496e58" /> | <img src="https://github.com/user-attachments/assets/e681953a-7267-48fc-9193-affbe265ac9d" /> | 

| Input Screen | Healthy Result |
| --- | --- | 
| <img src="https://github.com/user-attachments/assets/558348f8-12ad-43d2-bd16-6c1f09685039" /> | <img src="https://github.com/user-attachments/assets/ad5c33cc-32c3-4a8e-bb11-6813e49c9741" /> | 

---

## ✨ Features

* **Gender Selection:** Interactive cards using Enums for Male and Female selection.
* **Dynamic Sliders:** Smooth height adjustment with real-time value updates.
* **Intuitive Counters:** Easy weight and age management using increment/decrement buttons.
* **Result Logic:** Detailed health messages based on standard medical categories.
* **Clean UI:** Dark-themed aesthetic designed for a modern user experience.

---

## 🧪 The Science Behind It

### The Formula

The app calculates the BMI using the standard metric formula:

$$BMI = \frac{weight (kg)}{height^2 (m)}$$

In our implementation:
`double res = weight / pow(height / 100, 2);`

### Classification Table

The app categorizes the result into four main health zones:

| BMI Range | Category | Color Indicator |
| --- | --- | --- |
| < 18.5 | **Underweight** | Yellow |
| 18.5 – 25 | **Healthy Weight** | Green |
| 25 – 30 | **Overweight** | Orange |
| ≥ 30 | **Obesity** | Red |

---

## 🛠️ Implementation Details

This project focuses on **Clean Code** principles and **SOLID** design:

* **Separation of Concerns:** Business logic (BMI calculation) is separated from the UI widgets.
* **Custom Widgets:** Reusable components for cards, buttons, and layouts to keep the code DRY (Don't Repeat Yourself).
* **State Management:** Efficiently handling user input and navigation between screens.

---

## 🚀 How to Run

1. Ensure you have Flutter installed on your machine (Developed and tested on **Linux Mint**).
2. Clone the repository:
```bash
git clone https://github.com/SH-AHD/BMI_Calculator.git

```


3. Install dependencies:
```bash
flutter pub get

```


4. Run the app:
```bash
flutter run

```

