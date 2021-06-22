import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_schoodule/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_schoodule/home_page.dart';
import 'package:flutter_schoodule/services/authentication_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance)
        ),

        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanges, 
          initialData: '',
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: WelcomeScreen(),
      )
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {

  const AuthenticationWrapper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if(firebaseUser != null) {
      return Home();
    } else {
      return WelcomeScreen();
    }
  }
}



