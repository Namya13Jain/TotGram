import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:tot_gram/responsive/mobile_screen_layout.dart';
//import 'package:tot_gram/responsive/web_screen_layout.dart';
import 'package:tot_gram/screens/login_screen.dart';
//import 'package:tot_gram/screens/splash_screen.dart';
import 'package:tot_gram/utils/colors.dart';
//import './responsive/responsive_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //if we need to reun our app on web
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCydyRz949xTAB2hsNY2Oh-GH6IrDqiY3o",
        appId: "1:951127069183:web:a05d7e44ceb5fe863a57ca",
        messagingSenderId: "951127069183",
        projectId: "totgram-ce6e4",
        storageBucket: "totgram-ce6e4.appspot.com",
      ),
    );
  }
  //if we need to run our app on android mobile
  else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, Key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tot Gram',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      /*  home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ), */
      home: const LoginScreen(),
    );
  }
}

/* class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, Key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Home"),
    );
  }
}
 */