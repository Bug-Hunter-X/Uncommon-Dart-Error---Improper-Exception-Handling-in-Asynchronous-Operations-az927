```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiError extends Error {
  final String message;
  ApiError(this.message);
  @override
  String toString() => "API Error: $message";
}

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final dataList = jsonData.cast<Map<String, dynamic>>();
      // Process dataList
    } else {
      throw ApiError('Request failed with status: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('JSON format error: $e');
    // Handle JSON parsing errors
  } on http.ClientException catch (e) {
    print('Network error: $e');
    // Handle network errors
  } on ApiError catch (e) {
    print('API error: $e');
    // Handle API-specific errors
  } catch (e, stackTrace) {
    print('An unexpected error occurred: $e
Stack Trace: $stackTrace');
    // Log unexpected errors
  }
}
```