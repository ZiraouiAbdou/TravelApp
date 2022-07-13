import 'package:flutter/material.dart';

class Temp1 extends StatelessWidget {
  // const Temp1({Key? key}) : super(key: key);
  String image = '';
  String location = '';
  String title = '';
  String rating = '';
  Temp1(
      {Key? key,
      required this.image,
      required this.title,
      required this.location,
      required this.rating})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(image))),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 300,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on),
                          Text(location,
                              style: const TextStyle(color: Colors.black45)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(rating,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
