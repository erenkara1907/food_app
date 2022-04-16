import 'package:flutter/material.dart';
import 'package:food_app/view/discover/component/discover_model.dart';
import 'package:food_app/view/discover/discover_view.dart';
import 'package:food_app/view/profile/component/favourite_tab_view.dart';
import 'package:food_app/view/profile/component/tab_menu.dart';
import 'package:food_app/view/profile/component/text_input.dart';
import 'package:get/get.dart';
import '../discover/component/discover_card.dart';
import 'component/profile_info.dart';

class OutsideProfileView extends StatefulWidget {
  const OutsideProfileView({Key? key}) : super(key: key);

  @override
  _OutsideProfileViewState createState() => _OutsideProfileViewState();
}

class _OutsideProfileViewState extends State<OutsideProfileView>
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
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 20,bottom: 10),
                  child: SizedBox(
                    width: Get.width,
                    child: const Text('Dana Levi Posts',style: TextStyle(color: Colors.white,fontFamily: "Roboto",fontSize: 20),),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 1,
                    crossAxisCount: 3,
                    children: List.generate(discoversChat.length, (index) {
                      discoversChat.shuffle();
                      return Center(
                        child: DiscoverCard(
                          static: true,
                          width: Get.width / 3.5,
                          height: Get.height / 12,
                          icon: false,
                          discover: discoversChat[index],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
