import 'dart:convert';

import 'package:http/http.dart' as http;

// in main 

  // await postData('http://localhost:1337/Games');

  // await updateData('http://localhost:1337/Games/6159e86c6248be24bc1bf922');
  // await DeleteData('http://localhost:1337/Games/6159e86c6248be24bc1bf922');

Future<void> postData(String url) async {
  try {
    final response = await http.post(Uri.parse(url), headers: {
      // 'Content-Type': 'application/json; charset=UTF-8',
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNTk2YmU5NjNiZGJhMmYxODdlZDM2NCIsImlhdCI6MTYzMzI4NDQyOCwiZXhwIjoxNjM1ODc2NDI4fQ.rnELNYpESi9j2cO-Ia-W5vXvtoweU2o1_Qm6RBatHMA'
    }, body: {
      'userId': '2',
      'title': '222222222222222222'
    });
    print(response.body);
  } catch (e) {
    print(e);
  }
}

Future<void> updateData(String url) async {
  try {
    final response = await http.put(Uri.parse(url), headers: {
      // 'Content-Type': 'application/json; charset=UTF-8',
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNTk2YmU5NjNiZGJhMmYxODdlZDM2NCIsImlhdCI6MTYzMzI4NDQyOCwiZXhwIjoxNjM1ODc2NDI4fQ.rnELNYpESi9j2cO-Ia-W5vXvtoweU2o1_Qm6RBatHMA'
    }, body: {
      'name': '222222222222222222'
    });
    print(response.body);
  } catch (e) {
    print(e);
  }
}

Future<void> DeleteData(String url) async {
  try {
    final response = await http.delete(
      Uri.parse(url),
      headers: {
        // 'Content-Type': 'application/json; charset=UTF-8',
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNTk2YmU5NjNiZGJhMmYxODdlZDM2NCIsImlhdCI6MTYzMzI4NDQyOCwiZXhwIjoxNjM1ODc2NDI4fQ.rnELNYpESi9j2cO-Ia-W5vXvtoweU2o1_Qm6RBatHMA'
      },
    );
    print(response.body);
    print('Scan done successfully');
  } catch (e) {
    print(e);
  }
}
