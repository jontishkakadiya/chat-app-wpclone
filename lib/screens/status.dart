// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import '../widgets/searchbar.dart';
//
// class StatusScreen extends StatefulWidget {
//   const StatusScreen({super.key});
//
//   @override
//   State<StatusScreen> createState() => _StatusScreenState();
// }
//
// class _StatusScreenState extends State<StatusScreen> {
//   final _auth = FirebaseAuth.instance;
//   late User _user;
//
//   @override
//   void initState() {
//     super.initState();
//     _user = _auth.currentUser!;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(left: 15.0),
//               child: Text(
//                 'Updates',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
//               ),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15.0),
//               child: Searchbar(),
//             ),
//             const SizedBox(
//               height: 14,
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 15.0),
//               child: Text(
//                 'Status',
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Container(
//               height: 70,
//               decoration: const BoxDecoration(
//                 color: Colors.black26,
//               ),
//               child: const ListTile(
//                 leading: Stack(
//                   children: [
//                     CircleAvatar(
//                       radius: 28,
//                       backgroundColor: Colors.black38,
//                       child: Icon(
//                         IconData(0xf85a, fontFamily: 'MaterialIcons'),
//                         color: Colors.red,
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: 0,
//                       child: CircleAvatar(
//                         radius: 10,
//                         backgroundColor: Colors.blue,
//                         child: Center(
//                           child: Icon(
//                             Icons.add,
//                             size: 20,
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 title: Text(
//                   'My Status',
//                   style: TextStyle(
//                     color: Color.fromRGBO(3, 65, 197, 100),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//                 subtitle: Text(
//                   'Add to my status',
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 trailing: Wrap(
//                   spacing: 13,
//                   children: [
//                     CircleAvatar(
//                       radius: 17,
//                       backgroundColor: Colors.black,
//                       child: Center(
//                         child: Icon(
//                           Icons.camera_alt,
//                           size: 17,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     CircleAvatar(
//                       radius: 17,
//                       backgroundColor: Colors.black,
//                       child: Center(
//                         child: Icon(
//                           Icons.edit,
//                           size: 17,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 17,
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 15.0),
//               child: Text(
//                 'Recent Updates',
//                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
//               ),
//             ),
//             Container(
//                 height: 570,
//                 decoration: const BoxDecoration(
//                   color: Colors.black26,
//                 ),
//                 child: const Center(child: Text('Calls Log'))),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/searchbar.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Updates',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Searchbar(),
            ),
            const SizedBox(
              height: 14,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Status',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.black26,
              ),
              child: FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(_user.uid)
                    .get(),
                builder: (context, snapshot) {
                  var userData = snapshot.data!.data() as Map<String, dynamic>;
                  return ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: userData['image_url'] != null
                              ? NetworkImage(userData['image_url'])
                              : null,
                          child: userData['image_url'] == null
                              ? const Icon(Icons.person)
                              : null,
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    title: const Text(
                      'My Status',
                      style: TextStyle(
                        color: Color.fromRGBO(3, 65, 197, 100),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: const Text(
                      'Add to my status',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: const Wrap(
                      spacing: 13,
                      children: [
                        CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.black,
                          child: Center(
                            child: Icon(
                              Icons.camera_alt,
                              size: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.black,
                          child: Center(
                            child: Icon(
                              Icons.edit,
                              size: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Recent Updates',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
            ),
            Container(
              height: 580,
              decoration: const BoxDecoration(
                color: Colors.black26,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Meet Mandaviya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Incoming',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                  Divider(
                    indent: 88,
                    height: 0.1,
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Meet Mandaviya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Incoming',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                  Divider(
                    indent: 88,
                    height: 0.1,
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Meet Mandaviya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Incoming',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                  Divider(
                    indent: 88,
                    height: 0.1,
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Meet Mandaviya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Incoming',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                  Divider(
                    indent: 88,
                    height: 0.1,
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Meet Mandaviya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Incoming',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                  Divider(
                    indent: 88,
                    height: 0.1,
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Meet Mandaviya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Incoming',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                  Divider(
                    indent: 88,
                    height: 0.1,
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Meet Mandaviya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Incoming',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                  Divider(
                    indent: 88,
                    height: 0.1,
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      child: Icon(Icons.person),
                    ),
                    title: Text(
                      'Meet Mandaviya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Incoming',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
