import 'package:authen1/pages/add_product_page.dart';
import 'package:authen1/pages/auth_page.dart';
import 'package:authen1/pages/edit_product_page.dart';
import 'package:authen1/providers/auth.dart';
import 'package:authen1/providers/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        home: LoginScreen(),
        routes: {
          AddProductPage.route: (context) => AddProductPage(),
          EditProductPage.route: (context) => EditProductPage(),
        },
      ), 
    );
  }
}
