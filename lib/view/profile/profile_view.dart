import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/view/discover/discover_view.dart';
import 'package:food_app/view/profile/component/favourite_tab_view.dart';
import 'package:food_app/view/profile/component/tab_menu.dart';
import 'package:food_app/view/profile/component/text_input.dart';
import 'package:get/get.dart';

import 'component/profile_info.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  bool isActive = true;
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;

  bool visibility = true;

  var breakfast = 'breakfast';
  var lunch = 'lunch';
  var intermediateHot = 'intermediate hot';
  var dinner = 'dinner';

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
      body: Column(
        children: [
          const ProfileInfo(),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0)),
                color: Color.fromRGBO(27, 27, 27, 1)),
            width: Get.width,
            height: Get.height / 2,
            padding: const EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                children: [
                  SizedBox(
                    width: Get.width / 1.2,
                    child: TabBar(
                      onTap: (value) {
                        setState(() {
                          value == 0 ? isActive = true : isActive = false;
                          value == 1 ? isActive1 = true : isActive1 = false;
                          value == 2 ? isActive2 = true : isActive2 = false;
                          value == 3 ? isActive3 = true : isActive3 = false;
                        });
                      },
                      isScrollable: false,
                      controller: _tabController,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 87, 16, 1),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor:
                          const Color.fromRGBO(255, 87, 16, 1),
                      tabs: [
                        TabMenu(
                            text: 'Favourite',
                            image: 'assets/images/icnFav.png',
                            isActive: isActive),
                        TabMenu(
                            text: 'Chat',
                            image: 'assets/images/icnChat.png',
                            isActive: isActive1),
                        TabMenu(
                            text: 'Request',
                            image: 'assets/images/icnRequest.png',
                            isActive: isActive2),
                        TabMenu(
                            text: 'Settings',
                            image: 'assets/images/icnShare.png',
                            isActive: isActive3)
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        FavouriteTabView(
                            breakfast: breakfast,
                            lunch: lunch,
                            intermediateHot: intermediateHot,
                            dinner: dinner),
                        ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  width: Get.width / 1.2,
                                  color: Colors.red,
                                  child: Text("Chat $index"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            );
                          },
                        ),
                        ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  width: Get.width / 1.2,
                                  color: Colors.red,
                                  child: Text("Request $index"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            );
                          },
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              const TextInput(
                                  prefixIcon: Icons.person,
                                  topPadding: 30,
                                  hintText: 'First  Name'),
                              const TextInput(
                                  prefixIcon: Icons.person,
                                  topPadding: 10,
                                  hintText: 'Last  Name'),
                              const TextInput(
                                  prefixIcon: Icons.email,
                                  topPadding: 10,
                                  hintText: 'Email'),
                              TextInput(
                                prefixIcon: Icons.lock,
                                topPadding: 10,
                                hintText: 'Password',
                                obscureText: visibility,
                                suffixIcon: visibility == true
                                    ? IconButton(
                                        onPressed: () {
                                          setState(() {
                                            visibility = false;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.visibility_off,
                                          color: Colors.deepOrange,
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () {
                                          setState(() {
                                            visibility = true;
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.visibility,
                                          color: Colors.deepOrange,
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: Get.width / 2,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    Get.to(DiscoverView());
                                  },
                                  child: const Text(
                                    "Change",
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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






