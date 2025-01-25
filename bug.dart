```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  This is where the bug might happen.
      final jsonData = jsonDecode(response.body);
      // Assume jsonData is a List<Map<String, dynamic>>
      for (var item in jsonData) {
        final id = item['id']; //Potential error if 'id' is missing
        print('ID: $id');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //In production, better error handling should be implemented
  }
}
```