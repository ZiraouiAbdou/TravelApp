import 'package:flutter/material.dart';

TextStyle titleStyle = const TextStyle(
    color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);
TextStyle locationStyle = const TextStyle(
    color: Color.fromARGB(102, 0, 0, 0),
    fontSize: 13,
    fontWeight: FontWeight.bold);

class recommanded extends StatelessWidget {
  // const recommanded({Key? key}) : super(key: key);
  String title;
  String location;
  String rating;
  String price;
  String image;

  recommanded({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white60, borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(6),

        // width: double.infinity,
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: 115,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      title,
                      style: titleStyle,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on),
                        Text(
                          location,
                          style: locationStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          rating,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "\$$price",
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff006fb9)),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Text(
                "/person",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
