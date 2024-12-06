```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Assuming jsonData is a list of maps
      final dataList = jsonData.cast<Map<String, dynamic>>();
      // Process the dataList
    } else {
      // Handle the error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled by a higher level
  }
}
```