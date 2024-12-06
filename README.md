# Uncommon Dart Error: Improper Exception Handling in Asynchronous Operations

This repository demonstrates a common but subtle error in Dart asynchronous programming:  inadequate exception handling.

The `bug.dart` file showcases code that uses a `try-catch` block but could be improved for better error reporting and recovery.

The `bugSolution.dart` file provides a refined version with more robust error handling and specific exception types. This ensures better debugging and maintainability.

**Key improvements in the solution:**

* **Specific exception handling:** Catches different exception types (e.g., `FormatException`, `http.ClientException`) to provide more context during errors.
* **Custom exceptions:** Introduces a custom exception type for API errors to improve error clarity.
* **Error logging:** Logs more informative error messages, including stack traces.