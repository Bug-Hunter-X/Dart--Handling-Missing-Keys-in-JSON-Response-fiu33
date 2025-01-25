# Dart: Handling Missing Keys in JSON Response

This repository demonstrates a common error in Dart applications that involve parsing JSON responses from APIs:  the failure to gracefully handle cases where expected keys are missing from the JSON data.

The `bug.dart` file contains code that attempts to access the 'id' key from a JSON object. If this key is not present, a runtime exception occurs. 

The `bugSolution.dart` file provides a corrected version that uses the ?? operator to assign a default value in such cases, preventing crashes.

## How to reproduce the bug

1. Clone this repository
2. Run `bug.dart`
3. Modify the API response (perhaps by mocking a response without the 'id' key)
4. Observe the resulting exception