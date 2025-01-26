# Dart: Improper JSON Decoding and Network Request Error Handling

This repository demonstrates a common coding error in Dart related to handling JSON decoding and potential exceptions during network requests.

The `bug.dart` file shows the original code with inadequate error handling. The `bugSolution.dart` file provides a corrected and more robust version.

## Bug Description

The original code lacks proper checks for null or missing keys in the JSON response, and its exception handling is insufficient. It assumes the API always returns a successful response with well-formed JSON.

## Solution

The improved code includes checks for null and missing keys, using `jsonData['someKey']?` to avoid errors if 'someKey' is absent. It also includes more detailed error logging and more refined exception handling, making the code more resilient and easier to debug.

This example highlights the importance of writing defensive code when working with external APIs and data.