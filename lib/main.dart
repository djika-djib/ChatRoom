import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:chatroom/screens/chat_screen.dart';
import 'package:chatroom/screens/welcome_screen.dart';
import 'package:chatroom/screens/login_screen.dart';
import 'package:chatroom/screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}


//initialRoute: '/',
//   routes: {
//     '/': (context) => HomePage(),
//     '/second': (context) => SecondPage(),
//     '/third': (context) => ThirdPage(),
//   },