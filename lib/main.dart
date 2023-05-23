import 'package:flutter/material.dart';
import 'package:widget_testing/home_page.dart';

void main() => runApp(MaterialApp(
      title: 'widget testing',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    ));
