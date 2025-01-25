```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      for (var item in jsonData) {
        final id = item['id'] ?? -1; // Handle missing 'id' key gracefully
        print('ID: $id');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Implement robust error handling for production
  }
}
```