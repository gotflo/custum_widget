import 'package:custumwidget/pages/jour_restaurant.dart';
import 'package:custumwidget/pages/liste_salle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Text("Menu du restaurant"),
              Gap(8),
              JoursDuRestau(),
              Gap(12),
              Text("Liste des salles"),
              ListDesSalles(),
            ],
          ),
        ),
      ),
    );
  }
}
