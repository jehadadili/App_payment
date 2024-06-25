import 'package:card/features/core/util/styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({required final String title}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    leading: Container(
      
    ),
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
    
  );
}
