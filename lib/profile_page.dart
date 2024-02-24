import 'package:flutter/material.dart';
import 'package:profilepage/follow.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDarkTheme = false;

  List<Map<String, dynamic>> people = [
    {'name': 'John Doe', 'age': 25, 'address': 'a1'},
    {'name': 'Jane Doe', 'age': 22, 'address': 'a1'},
    {'name': 'Alice', 'age': 30, 'address': 'a1'},
    {'name': 'Bob', 'age': 28, 'address': 'a1'},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkTheme
          ? ThemeData.dark()
          : ThemeData.light().copyWith(
              primaryColor: const Color(0xFF1C1C1C),
            ),
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.of(context).push(
        //         MaterialPageRoute(builder: (context) => const AddPostScreen()));
        //   },
        //   shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        //   child: const Icon(Icons.add),
        // ),
        // appBar: AppBar(
        //   backgroundColor: mobileBackgroundColor,
        //   title: Text(
        //     userData['username'],
        //   ),
        //   centerTitle: false,
        // ),
        body: Column(
          children: [
            const Center(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                // backgroundImage: NetworkImage(
                //   // userData['photoUrl'],
                // ),
                radius: 40,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                "put username  here",
                // userData['username'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FollowButton(
                  text: 'Sign Out',
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  borderColor: Colors.grey,
                  function: () {},
                ),
              ],
            ),
            const Divider(),
            SwitchListTile(
              title: isDarkTheme ? Text('Dark Theme') : Text("Light theme"),
              value: isDarkTheme,
              onChanged: (value) {
                setState(() {
                  isDarkTheme = value;
                });
              },
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  final person = people[index];
                  return Card(
                    child: ListTile(
                      title: Text(person['name']),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Age: ${person['age']}'),
                          Text(person['address']),
                        ],
                      ),
                      // trailing: ,
                    ),
                  );
                },
              ),
            ),
            FollowButton(
              text: 'Add patient',
              backgroundColor: Colors.black,
              textColor: Colors.white,
              borderColor: Colors.grey,
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}
