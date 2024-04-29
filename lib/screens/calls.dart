import 'package:flutter/material.dart';

import '../widgets/searchbar.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(3, 65, 197, 100),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: ToggleButtons(
              onPressed: (int index) {
                // Handle toggle button press
              },
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              //selectedBorderColor: Colors.red[700],
              selectedColor: Colors.black,
              disabledColor: Colors.black,
              fillColor: Colors.black54,
              color: Colors.black,
              //Colors.red[400],
              constraints: const BoxConstraints(
                minHeight: 40.0,
                minWidth: 80.0,
              ),
              isSelected: const [true, false],
              children: const [
                Text(
                  'All',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'Missed',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ], // Example initial selection
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconData(0xe04d, fontFamily: 'MaterialIcons'),
              color: Color.fromRGBO(3, 65, 197, 100),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Calls',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              const SizedBox(
                height: 8,
              ),
              const Searchbar(),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black38,
                    child: Icon(
                      IconData(0xf85a, fontFamily: 'MaterialIcons'),
                      color: Color.fromRGBO(3, 65, 197, 100),
                    ),
                  ),
                  title: Text(
                    'Create Call Link',
                    style: TextStyle(
                      color: Color.fromRGBO(3, 65, 197, 100),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Share a link for your WhatsApp call',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Recent',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                  height: 582,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 23,
                          child: Icon(Icons.person),
                        ),
                        title: const Text(
                          'Meet Mandaviya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Row(
                          children: [
                            Icon(
                              IconData(0xf007a, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            )
                          ],
                        ),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              '10:00AM',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 77,
                        height: 0.1,
                        color: Colors.black,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 23,
                          child: Icon(Icons.person),
                        ),
                        title: const Text(
                          'Meet Mandaviya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Row(
                          children: [
                            Icon(
                              IconData(0xf007a, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            )
                          ],
                        ),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              '10:00AM',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 77,
                        height: 0.1,
                        color: Colors.black,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 23,
                          child: Icon(Icons.person),
                        ),
                        title: const Text(
                          'Meet Mandaviya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Row(
                          children: [
                            Icon(
                              IconData(0xf007a, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            )
                          ],
                        ),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              '10:00AM',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 77,
                        height: 0.1,
                        color: Colors.black,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 23,
                          child: Icon(Icons.person),
                        ),
                        title: const Text(
                          'Meet Mandaviya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Row(
                          children: [
                            Icon(
                              IconData(0xf007a, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            )
                          ],
                        ),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              '10:00AM',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 77,
                        height: 0.1,
                        color: Colors.black,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 23,
                          child: Icon(Icons.person),
                        ),
                        title: const Text(
                          'Meet Mandaviya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Row(
                          children: [
                            Icon(
                              IconData(0xf007a, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            )
                          ],
                        ),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              '10:00AM',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 77,
                        height: 0.1,
                        color: Colors.black,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 23,
                          child: Icon(Icons.person),
                        ),
                        title: const Text(
                          'Meet Mandaviya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Row(
                          children: [
                            Icon(
                              IconData(0xf007a, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            )
                          ],
                        ),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              '10:00AM',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 77,
                        height: 0.1,
                        color: Colors.black,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 23,
                          child: Icon(Icons.person),
                        ),
                        title: const Text(
                          'Meet Mandaviya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Row(
                          children: [
                            Icon(
                              IconData(0xf007a, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            )
                          ],
                        ),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              '10:00AM',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 77,
                        height: 0.1,
                        color: Colors.black,
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 23,
                          child: Icon(Icons.person),
                        ),
                        title: const Text(
                          'Meet Mandaviya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Row(
                          children: [
                            Icon(
                              IconData(0xf007a, fontFamily: 'MaterialIcons'),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incoming',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            )
                          ],
                        ),
                        trailing: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              '10:00AM',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline_rounded),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
