import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String dropdownValue = 'Create New';
  String filePath = 'file path';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Radio Monitoring System'),
      ),
      drawer: Drawer(
          // Populate your Drawer with the items you want
          ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    initialValue: filePath,
                    decoration:
                        InputDecoration(labelText: 'Select file/folder'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement file browsing functionality
                  },
                  child: Text('Browse File'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement folder browsing functionality
                  },
                  child: Text('Browse Folder'),
                ),
              ],
            ),
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Create New', 'Existing Job 1', 'Existing Job 2']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ListTile(
              title: Text('Song: Mage Punchi Rosa Male.mp3'),
              trailing: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  // Implement remove functionality
                },
              ),
            ),
            TextFormField(
              initialValue: 'Mage Punchi Rosa Male',
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextFormField(
              initialValue: 'Amarasiri Peris',
              decoration: InputDecoration(labelText: 'Author'),
            ),
            TextFormField(
              initialValue: 'Amarasiri peris',
              decoration: InputDecoration(labelText: 'Musician'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement upload functionality
              },
              child: Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}
