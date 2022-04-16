import 'package:flutter/material.dart';
import 'package:food_app/view/profile/outside_profile_view.dart';
import 'package:food_app/view/search/search_view.dart';
import 'package:get/get.dart';
import '../profile/component/tab_menu.dart';
import 'component/discover_card.dart';
import 'component/discover_model.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  _DiscoverViewState createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  bool isActive = true;
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;

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
      appBar: AppBar(
        title: Container(
          width: Get.width,
          child: Text('Logo | Keşfet',textAlign: TextAlign.right,),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
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
                unselectedLabelColor: const Color.fromRGBO(255, 87, 16, 1),
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
            const SizedBox(height: 30,),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  GridView.count(
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: List.generate(discoversFavourite.length, (index) {
                      discoversFavourite.shuffle();
                      return Center(
                        child: GestureDetector(
                          onTap: (){
                            Get.to(OutsideProfileView());
                          },
                          child: DiscoverCard(
                            discover: discoversFavourite[index],
                          ),
                        ),
                      );
                    }),
                  ),
                  GridView.count(
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: List.generate(discoversChat.length, (index) {
                      discoversChat.shuffle();
                      return Center(
                        child: GestureDetector(
                          onTap: (){
                            Get.to(SearchView());
                          },
                          child: DiscoverCard(
                            discover: discoversChat[index],
                          ),
                        ),
                      );
                    }),
                  ),
                  GridView.count(
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: List.generate(discoversRequest.length, (index) {
                      discoversRequest.shuffle();
                      return Center(
                        child: DiscoverCard(
                          discover: discoversRequest[index],
                        ),
                      );
                    }),
                  ),
                  GridView.count(
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: List.generate(discoversSettings.length, (index) {
                      discoversSettings.shuffle();
                      return Center(
                        child: DiscoverCard(
                          discover: discoversSettings[index],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
