import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome',
      routes: {
        'registration': (context) => RegistrationScreen(),
        'login': (context) => LoginScreen(),
        'welcome': (context) => WelcomeScreen(),
        'chat': (context) => ChatScreen()
      },
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
