import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main(){
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: HomeScreen(),
    ),
  ));
}