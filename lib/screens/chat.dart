import 'package:chat_app/widgets/chat_messages.dart';
import 'package:chat_app/widgets/new_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void setupPushNotifications() async {
    final fcm = FirebaseMessaging.instance;

    await fcm.requestPermission();

    fcm.subscribeToTopic('chat');
    //eiXs1dflR-qlr1tvMCASXR:APA91bHvDwM9zKI2mGU-irHZCs8vOLuinNj4VVK4d__ufAcbci7HLKA0ZpuQdkdfmPet2HC8IOtBeYj6qroF81EJbxgmIQz2Rvxij8_78xozJSLMfOqkRKIXVOZy44C64nz9TUXaooFf
  }

  @override
  void initState() {
    super.initState();

    setupPushNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Chats', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).colorScheme.primary,
              ))
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: ChatMessages(),
          ),
          NewMessage(),
        ],
      ),
    );
  }
}
