import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListDesSalles extends StatelessWidget {
  const ListDesSalles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x28724192),
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "https://www.salle-reunion-montpellier.com/images/Amphi%201.JPG",
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  // fit: BoxFit.cover,
                ),
                const Gap(2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text(
                        "AMPHITHEATRE C100",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.grey,
                        ),
                        Text(
                          "Campus",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    const Gap(8),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
