import 'package:flutter/material.dart';
import 'package:travelapp/recommndations.dart';
import 'package:travelapp/templates.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: const Icon(Icons.location_on),
        title: const Text("T R A V E L"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.explore),
          ),
        ],
      ),

      // text then list view
      body: ListView(
        // physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular place",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xff006fb9)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  height: 300,
                  child: ListView(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Temp1(
                        image:
                            "assets/image/kawah-ijen-banyuwangi-1024x858.jpg",
                        title: "Kawah Ijen",
                        location: "Banyuwangi, Jawa Timur",
                        rating: '5.0',
                      ),
                      Temp1(
                        image: "assets/image/beach.jpg",
                        title: "Kelingking Beach",
                        location: "Kelungkung",
                        rating: "4.7",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Recommanded for you",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xff006fb9)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                recommanded(
                    image: "assets/image/jakarta.jpg",
                    location: "Down Town",
                    price: "250",
                    rating: "4.9",
                    title: "Jakarta"),
                recommanded(
                    image: "assets/image/Pura+Ulun+Danu+Bratan+Temple.jpg",
                    location: "Banyuwangi",
                    price: "250",
                    rating: "4.9",
                    title: "Pura Ulun"),
                recommanded(
                    image: "assets/image/gunung-bromo-volcano-indonesia.jpg",
                    title: "Bromo",
                    location: "Volcano",
                    rating: "4.7",
                    price: "45"),
                recommanded(
                    image: "assets/image/jakarta.jpg",
                    location: "Down Town",
                    price: "250",
                    rating: "4.9",
                    title: "Jakarta"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
