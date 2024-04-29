import 'package:flutter/material.dart';
import 'package:chat_app/widgets/searchbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/listtile_setting.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _auth = FirebaseAuth.instance;
  late User _user;

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
            children: [
              const Text(
                'Settings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Searchbar(),
              const SizedBox(height: 17),
              Container(
                height: 141,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FutureBuilder<DocumentSnapshot>(
                  future: FirebaseFirestore.instance
                      .collection('users')
                      .doc(_user.uid)
                      .get(),
                  builder: (context, snapshot) {
                    var userData =
                        snapshot.data!.data() as Map<String, dynamic>;

                    return Column(
                      children: [
                        const SizedBox(height: 6),
                        ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: userData['image_url'] != null
                                ? NetworkImage(userData['image_url'])
                                : null,
                            child: userData['image_url'] == null
                                ? const Icon(Icons.person)
                                : null,
                          ),
                          title: Text(
                            userData['username'] ?? 'Username',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
                          subtitle: Text(userData['email'] ?? 'Email'),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.black12,
                            child: IconButton(
                              color: const Color.fromRGBO(3, 65, 197, 100),
                              icon: const Icon(Icons.qr_code),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Divider(
                          height: 0.1,
                          color: Colors.black,
                        ),
                        ListTile(
                          onTap: () {},
                          leading: const Icon(
                            IconData(0xe042, fontFamily: 'MaterialIcons'),
                            color: Color.fromRGBO(3, 65, 197, 100),
                            size: 34,
                          ),
                          title: const Text(
                            'Avatar',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            IconData(0xe09c,
                                fontFamily: 'MaterialIcons',
                                matchTextDirection: true),
                            size: 17,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 34),
              Container(
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTileSetting(
                      onTap: () {},
                      tileColor: Colors.green,
                      titleText: 'Broadcast List',
                      titleIcon:
                          const IconData(0xf06e2, fontFamily: 'MaterialIcons'),
                    ),
                    const Divider(
                      indent: 62,
                      height: 0.1,
                      color: Colors.black,
                    ),
                    ListTileSetting(
                      onTap: () {},
                      tileColor: Colors.orange,
                      titleText: 'Starred Messages',
                      titleIcon:
                          const IconData(0xe5f9, fontFamily: 'MaterialIcons'),
                    ),
                    const Divider(
                      indent: 62,
                      height: 0.1,
                      color: Colors.black,
                    ),
                    ListTileSetting(
                      onTap: () {},
                      tileColor: Colors.teal,
                      titleText: 'Linked Devices',
                      titleIcon:
                          const IconData(0xf6a8, fontFamily: 'MaterialIcons'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 34),
              Container(
                height: 282,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTileSetting(
                      onTap: () {},
                      tileColor: const Color.fromRGBO(3, 65, 197, 100),
                      titleText: 'Account',
                      titleIcon:
                          const IconData(0xf052b, fontFamily: 'MaterialIcons'),
                    ),
                    const Divider(
                      indent: 62,
                      height: 0.1,
                      color: Colors.black,
                    ),
                    ListTileSetting(
                      onTap: () {},
                      tileColor: Colors.cyan,
                      titleText: 'Privacy',
                      titleIcon:
                          const IconData(0xe3b1, fontFamily: 'MaterialIcons'),
                    ),
                    const Divider(
                      indent: 62,
                      height: 0.1,
                      color: Colors.black,
                    ),
                    ListTileSetting(
                      onTap: () {},
                      tileColor: Colors.green,
                      titleText: 'Chats',
                      titleIcon:
                          const IconData(0xf631, fontFamily: 'MaterialIcons'),
                    ),
                    const Divider(
                      indent: 62,
                      height: 0.1,
                      color: Colors.black,
                    ),
                    ListTileSetting(
                      onTap: () {},
                      tileColor: Colors.redAccent,
                      titleText: 'Notifications',
                      titleIcon:
                          const IconData(0xf0024, fontFamily: 'MaterialIcons'),
                    ),
                    const Divider(
                      indent: 62,
                      height: 0.1,
                      color: Colors.black,
                    ),
                    ListTileSetting(
                      onTap: () {},
                      tileColor: Colors.green,
                      titleText: 'Storage and Data',
                      titleIcon:
                          const IconData(0xf3ec, fontFamily: 'MaterialIcons'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 34),
              Container(
                height: 113,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTileSetting(
                      onTap: () {},
                      tileColor: const Color.fromRGBO(3, 65, 197, 100),
                      titleText: 'Help',
                      titleIcon: const IconData(0xf0f7,
                          fontFamily: 'MaterialIcons',
                          matchTextDirection: true),
                    ),
                    const Divider(
                      indent: 62,
                      height: 0.1,
                      color: Colors.black,
                    ),
                    ListTileSetting(
                      onTap: () {},
                      tileColor: Colors.redAccent,
                      titleText: 'Tell a Friend',
                      titleIcon:
                          const IconData(0xf04b, fontFamily: 'MaterialIcons'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 34),
            ],
          ),
        ),
      ),
    );
  }
}
