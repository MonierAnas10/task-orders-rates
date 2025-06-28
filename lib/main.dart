import 'package:flutter/material.dart';
import 'package:taskordersrate/app.dart';
import 'package:taskordersrate/init.dart';

void main() async {
  await preInitializations();
  runApp(const App());
}
