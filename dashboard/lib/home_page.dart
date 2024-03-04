import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState(); // Create a state
}

class _MyHomePageState extends State<MyHomePage> // Create a state class
{
  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>(); // Create a key
  String dropdownValue =
      'Create New'; // Create a variable to store the selected value
  String filePath = 'file path'; // Create a variable to store the file path

  @override
  Widget build(BuildContext context) // Create a build method
  {
    // Create a Scaffold
    return Scaffold(
      key: _scaffoldKey, // Assign the key to the Scaffold
      appBar: AppBar(
        title: Text('Radio Monitoring System'),
      ),
      // Create a Drawer. You can populate the Drawer with the items you want.
      drawer: Drawer(
        // Populate your Drawer with the items you want
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.assessment),
              title: Text('Reports'),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text('Register'),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(Icons.compare_arrows),
              title: Text('Match'),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text('Channel'),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Artist'),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Songs'),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                // Handle the tap
              },
            ),
            ListTile(
              leading: Icon(Icons.build),
              title: Text('Utils'),
              onTap: () {
                // Handle the tap
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    initialValue:
                        filePath, // Assign the file path to the initial value
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
                  dropdownValue =
                      newValue!; // Assign the selected value to the variable
                });
              },
              items: <String>[
                'Create New',
                'Existing Job 1',
                'Existing Job 2'
              ] // Add your items
                  // Create a list of DropdownMenuItem widgets
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value, // Assign the value to the DropdownMenuItem
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
