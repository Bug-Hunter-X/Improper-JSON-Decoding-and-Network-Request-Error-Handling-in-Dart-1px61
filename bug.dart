```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON string
      final jsonData = jsonDecode(response.body);
      // Accessing data from jsonData
      print(jsonData['someKey']);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions appropriately
    print('Error: $e');
    // Rethrow the exception if needed
    rethrow;
  }
}
```