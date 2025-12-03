import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tpmusau_auth/firebase_options.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(const App());
  } catch (e) {
    runApp(MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Erreur d\'initialisation Firebase : $e'),
        ),
      ),
    ));
  }
}
