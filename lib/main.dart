import 'package:flutter/cupertino.dart';
import 'package:food_app/routes/app_pages.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
      title: 'Food App',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}