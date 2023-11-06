// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/colors.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/components/custom_cat_ima.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/components/custom_cat_item.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/components/custom_pop_des.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/components/custom_title.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/models/category_image_model.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/models/category_item_model.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/models/popular_destination_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryItemModel> categoryItems = [];
  List<CategoryImageModel> categoryImages = [];
  List<PopularDestinationModel> destinationItems = [];

  @override
  Widget build(BuildContext context) {
    Size screnSize = MediaQuery.of(context).size;
    void _getInitialInfo() {
      categoryItems = CategoryItemModel.getItems(context);
      categoryImages = CategoryImageModel.getImages(context);
      destinationItems = PopularDestinationModel.getDestinations(context);
    }

    _getInitialInfo();

    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(screnSize, context),
    );
  }

  Container buildBody(Size screnSize, BuildContext context) {
    var loc = AppLocalizations.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          CustomTitle(title: loc!.category, viewAllOnTap: () {}),
          SizedBox(height: 20),
          _categoryItems(),
          SizedBox(height: 20),
          _categoryImages(),
          SizedBox(height: 30),
          CustomTitle(title: loc!.popularDestination, viewAllOnTap: () {}),
          SizedBox(height: 20),
          _destinationItems(screnSize)
        ],
      ),
    );
  }

  Container _destinationItems(Size screnSize) {
    return Container(
      height: 250,
      child: ListView.separated(
          itemCount: destinationItems.length,
          scrollDirection: Axis.vertical,
          // padding: EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index) => SizedBox(height: 20),
          itemBuilder: (context, index) {
            return CustomPopularDesContainer(
              title: destinationItems[index].title,
              location: destinationItems[index].location,
              description: destinationItems[index].description,
              price: destinationItems[index].price,
              imagePath: destinationItems[index].imagePath,
              screnSize: screnSize,
            );
          }),
    );
  }

  Container _categoryImages() {
    return Container(
      height: 170,
      child: ListView.separated(
          itemCount: categoryImages.length,
          scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemBuilder: (context, index) {
            return CustomCategoryImages(
              onTap: () {},
              title: categoryImages[index].title,
              imagePath: categoryImages[index].imagePath,
              location: categoryImages[index].location,
              price: categoryImages[index].price,
            );
          }),
    );
  }

  Container _categoryItems() {
    return Container(
      height: 50,
      child: ListView.separated(
          itemCount: categoryItems.length,
          scrollDirection: Axis.horizontal,
          // padding: EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemBuilder: (context, index) {
            return CustomCategoryItem(
              title: categoryItems[index].title,
              imagePath: categoryItems[index].imagePath,
            );
          }),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    var loc = AppLocalizations.of(context);
    return AppBar(
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: oGrayColor.withOpacity(.15)),
        child: Icon(Icons.menu, color: oGrayColor.withOpacity(.6)),
      ),
      title: Column(
        children: [
          Text(
            loc!.currenLocTitle,
            style: TextStyle(color: oGrayColor, fontSize: 14),
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: oTextColor,
                size: 18,
              ),
              SizedBox(width: 5),
              Text(
                loc.currenLoc,
                style: TextStyle(
                  color: oDarkColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: oGrayColor.withOpacity(0.5),
                  offset: const Offset(0, 3),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Image.asset(
              'assets/ic_action.png',
            ),
          ),
        ),
      ],
    );
  }
}
