import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_payment/home_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey = 'pk_test_51KXUuoGk8zraejzheNdEPZaeAanqRaUllto6HJt5zbkyxGoaUpSaydzLXSy3HlIFP9gMIJR8oT9eJg43RIdeuOR000DJ7XO0x7';

  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

