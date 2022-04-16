import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
            child: Container(
              width: Get.width,
              child: const Text(
                'Logo | Mutfak',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.white, fontSize: 24, fontFamily: "Roboto"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextFormField(
              cursorColor: Colors.white,
              style:
                  const TextStyle(color: Colors.white70, fontFamily: "Roboto"),
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                      color: Colors.white70, fontFamily: "Roboto"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                          color: Colors.deepOrange, width: 1))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: const [
                Chip(
                  backgroundColor: Colors.deepOrange,
                  label: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
                  ),
                  avatar: Icon(
                    Icons.person_search,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  avatar: Icon(Icons.inbox),
                  label: Text('Post'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Container(
              height: Get.height / 12,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.deepPurple)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 27,
                      child: Image.asset(
                        "assets/images/profile.png",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Dana Levi',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '3 Mutual Friends',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    width: Get.width / 6.7,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.person_add,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        elevation: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Container(
              height: Get.height / 12,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 27,
                      child: Image.asset(
                        "assets/images/profile.png",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Dana Levi',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '3 Mutual Friends',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    width: Get.width / 6.7,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.person,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        elevation: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
