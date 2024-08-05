import 'package:CodeCatalyst/EditProfil.dart';
import 'package:CodeCatalyst/about.dart';
import 'package:CodeCatalyst/editprofile.dart';
import 'package:CodeCatalyst/feedback.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              width: 34,
            ),
            Image.asset(
              'assets/images/CatalystL.png',
              height: 25,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffe0eafc),Color(0xffcfdef3)
                      ])
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/images/pfp.jpg'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Username',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '@azanahmad',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Zaid is name, bachii phasana is my game....',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey.shade200,
                            ),

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Editpro(),
                                ),
                              );
                            },
                            child: Text('Edit Profile',style: TextStyle(color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildStatColumn('Questions', '0'),
                          _buildStatColumn('Answers', '0'),
                          _buildStatColumn('Rating', '100')
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(color: Colors.blueGrey.shade900),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.blueGrey.shade700,
                      ),
                      title: Text(
                        'Account Settings',
                        style: TextStyle(color: Colors.blueGrey.shade700),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.blueGrey.shade700,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.password,
                        color: Colors.blueGrey.shade700,
                      ),
                      title: Text(
                        'Change Password',
                        style: TextStyle(color: Colors.blueGrey.shade700),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {},
                    ),
                    Divider(color: Colors.blueGrey.shade700,),
                    ListTile(
                      leading: Icon(
                        Icons.data_exploration_rounded,
                        color: Colors.blueGrey.shade700,
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.blueGrey.shade700),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AboutPage(),));
                      },
                    ),
                    Divider(color: Colors.blueGrey.shade700),
                    ListTile(
                      leading: Icon(
                        Icons.feedback,
                        color: Colors.blueGrey.shade700,
                      ),
                      title: Text(
                        'Feedback',
                        style: TextStyle(color: Colors.blueGrey.shade700),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Feed(),));
                      },
                    ),
                    Divider(color: Colors.blueGrey.shade700),
                    ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Colors.blueGrey.shade700,
                      ),
                      title: Text(
                        'Logout',
                        style: TextStyle(color: Colors.blueGrey.shade700),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle logout
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _buildStatColumn(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.blueGrey.shade700,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}