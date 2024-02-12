# Flutter Job Assessment Task

## Overview
This repository contains my solution for the assessment task. The task involved building a Google Play Instant App using Flutter, triggered by opening a specific URL. The app display a loading spinner while downloading and executing the confetti package code using flutter_eval. Once the confetti is loaded and evaluated, it displays to the user.

## Solution Overview
- **Google Play Instant App**: Implemented a Flutter app that can be triggered by opening a specific URL, following Google's guidelines for instant apps.
- **Loading Spinner**: Displayed a loading spinner while downloading and executing the confetti package code.
- **Confetti Display**: Showed confetti to the user once it was loaded and evaluated using flutter_eval.

## Steps to Run
1. Clone this repository.
2. Navigate to the project directory.
3. Run `flutter run` command to launch the instant app.

## Solution Details
### Google Play Instant App
- Implemented URL handling and routing to handle the instant app trigger.
- Followed Google's guidelines to ensure compatibility and performance of the instant app.

### Loading Spinner
- Utilized a CircularProgressIndicator widget to display a loading spinner while fetching and executing the confetti package code.
- Ensured smooth transition between the loading state and displaying confetti.

### Confetti Display
- Dynamically downloaded the confetti package code using HTTP.
- Used flutter_eval to evaluate and execute the code at runtime.
- Integrated the confetti package to display confetti animations to the user.

## Challenges Faced
- **Dynamic Code Execution**: I faced challenges in dynamically executing the downloaded confetti package using flutter_eval.
- **Alternative Solution**: As a workaround, I implemented a solution to show a success state upon successful download instead of dynamically executing the code.

- **Google Play Instant App Setup**: Understanding and adhering to Google's guidelines for instant apps required thorough research and testing.

## Lessons Learned
- **Dynamic Code Execution**: Learned about the capabilities and limitations of flutter_eval for executing dynamic code within Flutter apps.
- **Instant App Development**: Gained insights into building Google Play Instant Apps and optimizing them for performance and user experience.

## Feedback
Your feedback on my solution is highly appreciated. Please feel free to reach out with any comments, suggestions, or questions.

## Author
Adedokun Rokeeb Adewunmi
adewunmirokeeb6@gmail.com
