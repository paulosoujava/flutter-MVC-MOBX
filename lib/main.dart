import 'package:flutter/material.dart';
import 'package:flutterappmvc/views/comments/comments_view.dart';
import 'package:flutterappmvc/views/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVC - App Example',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HomeView(),
        '/commnets': (context) => CommentsView(
          idPost: ModalRoute.of(context).settings.arguments,
        ),
      },
      initialRoute: '/',
    );
  }
}

