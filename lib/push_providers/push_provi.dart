import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:video_jitsi/push_providers/VideoEntrante.dart';

class PushNotificationPrividers {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  void initNotifications() async {
    _firebaseMessaging.requestPermission();
    _firebaseMessaging.getToken().then((token) {
      print('*********TOKEN*********');
      print(token);

      // ep2KFTtIQ-eGAoY-PHZO6d:APA91bHc0nn1Hy--pxDd_1dD4NHnrNKcqLIU9oriBLtOLk_VfKJUKkqIq8woyspaJgJe2P7Yzwmm-63bz7c9GsTlJQUA9dfGY5ElvoLFeY1WnD4eYYrvWeFRgJitb8WCnSSfam4JLSK-
    });
    //FirebaseMessaging.onMessage(){};
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification notification = message.notification;
      AndroidNotification android = message.notification?.android;
      print('Got a message whilst in the foreground!');
      print('Messagexxxxxxxx data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });
    Future<void> _firebaseMessagingBackgroundHandler(
        RemoteMessage message) async {
      // If you're going to use other Firebase services in the background, such as Firestore,
      // make sure you call `initializeApp` before using other Firebase services.
      await Firebase.initializeApp();

      print("Handling a background ********: ${message.messageId}");
      // return Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => VideoEntrante()),
      // );
    }
  }
}
