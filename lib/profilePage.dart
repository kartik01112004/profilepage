import 'package:flutter/material.dart';
import 'package:profilepage/follow.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Map<String, dynamic>> people = [
    {'name': 'John Doe', 'age': 25, 'address': 'a1'},
    {'name': 'Jane Doe', 'age': 22, 'address': 'a1'},
    {'name': 'Alice', 'age': 30, 'address': 'a1'},
    {'name': 'Bob', 'age': 28, 'address': 'a1'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: const Text(
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
                text: 'edit profile',
                backgroundColor: Colors.black,
                textColor: Colors.white,
                borderColor: Colors.grey,
                function: () {},
              ),
              const Padding(padding: EdgeInsets.only(left: 20)),
              FollowButton(
                text: 'Sign Out',
                backgroundColor: Colors.black,
                textColor: Colors.white,
                borderColor: Colors.grey,
                function: () {},
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Divider(),
          ),
          Text("Bio"),
          Text("other info"),
        ],
      ),
    );
  }
}
