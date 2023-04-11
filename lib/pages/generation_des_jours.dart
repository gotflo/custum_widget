import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenerationDesJours {
  final categories = [
    {
      'image': "assets/images/lundi.png",
      'title': 'Lundi',
    },
    {
      'image': "assets/images/mardi.png",
      'title': 'Mardi',
    },
    {
      'image': "assets/images/mercredi.png",
      'title': 'Mercredi',
    },
    {
      'image': "assets/images/jeudi.png",
      'title': 'Jeudi',
    },
    {
      'image': "assets/images/vendredi.png",
      'title': 'Vendredi',
    },
    {
      'image': "assets/images/samedi.png",
      'title': 'Samedi',
    },
  ];

  List homeBody = const [
    /// TOUS //////////////////////////////////////
    Text("Lundi"),
    ///////////////////////////////////////////////////////////
    /// CONCERT //////////////////////////////////////
    Text("Mardi"),

    /// FOIRE //////////////////////////////////////
    Text("Mercredi"),

    /// MISS //////////////////////////////////////
    Text("Jeudi"),

    /// CINEMA //////////////////////////////////////
    Text("Vendredi"),

    /// SPORT //////////////////////////////////////
    Text("Samedi"),

    ///
  ];
}
