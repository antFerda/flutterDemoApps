// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

Widget getBody() {
  return Container(
      color: Colors.green,
      height: 300,
      width: 200,
      child: Center(
          child: Text(
        'Hey hey bitches',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 40.0),
      )));
}

MaterialApp getApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello bitches app"),
      ),
      body: getBody(),
    ),
  );
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello bitches app"),
      ),
      body: Center(child: getBody()),
    ),
  ));
}
