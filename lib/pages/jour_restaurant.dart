import 'package:custumwidget/pages/generation_des_jours.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class JoursDuRestau extends StatefulWidget {
  const JoursDuRestau({super.key});

  @override
  State<JoursDuRestau> createState() => _JoursDuRestauState();
}

class _JoursDuRestauState extends State<JoursDuRestau> {
  int current = 0;
  String datetime = DateTime.now().toString();
  @override
  Widget build(BuildContext context) {
    GenerationDesJours generationDesJours = GenerationDesJours();
    String capitalize(String s) =>
        s.isNotEmpty ? '${s[0].toUpperCase()}${s.substring(1)}' : s;
    String dayName =
        capitalize(DateFormat("EEEEE", "fr").format(DateTime.now()));
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 22,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: generationDesJours.categories.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                current = index;
              });
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Wrap(
                    children: [
                      current == 0
                          ? const ListTile(
                              leading: Icon(Icons.share),
                              title: Text('Lundi'),
                            )
                          : current == 1
                              ? const ListTile(
                                  leading: Icon(Icons.share),
                                  title: Text('Mardi'),
                                )
                              : current == 2
                                  ? const ListTile(
                                      leading: Icon(Icons.share),
                                      title: Text('Mercredi'),
                                    )
                                  : current == 3
                                      ? const ListTile(
                                          leading: Icon(Icons.share),
                                          title: Text('Jeudi'),
                                        )
                                      : current == 4
                                          ? const ListTile(
                                              leading: Icon(Icons.share),
                                              title: Text('Vendredi'),
                                            )
                                          : current == 5
                                              ? const ListTile(
                                                  leading: Icon(Icons.share),
                                                  title: Text('Samedi'),
                                                )
                                              : current == 6
                                                  ? const ListTile(
                                                      leading:
                                                          Icon(Icons.share),
                                                      title: Text('Dimanche'),
                                                    )
                                                  : const Text(""),
                    ],
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 4,
                right: 4,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff724192),
                  ),
                  color:
                      dayName == generationDesJours.categories[index]['title']
                          ? const Color(0xff724192)
                          : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 8.0,
                    bottom: 8.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        generationDesJours.categories[index]['image'] as String,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                        ),
                        child: Text(
                          generationDesJours.categories[index]['title']
                              as String,
                          style: TextStyle(
                            color: dayName ==
                                    generationDesJours.categories[index]
                                        ['title']
                                ? const Color(0xFFE0E0E0)
                                : const Color(0xFF530388),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
