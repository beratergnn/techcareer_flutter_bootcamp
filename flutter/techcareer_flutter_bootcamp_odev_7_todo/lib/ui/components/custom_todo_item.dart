import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app_with_cubit_and_sqlite/constant/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
    required this.size,
    required this.title,
    required this.subtitle,
    // required this.date,
    // required this.bgColor,
    required this.onEditTap,
    required this.onDeleteTap,
  });

  final Size size;
  final String title;
  final String subtitle;
  // final String date;
  // final Color bgColor;
  final Function() onEditTap;
  final Function() onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColor.todoColor1,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppColor.textColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: size.width - 120,
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      color: AppColor.textColor2,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    maxLines: 3,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              InkWell(
                onTap: onEditTap,
                child: SvgPicture.asset(
                  'assets/icons/edit.svg',
                  color: AppColor.iconColor,
                  height: 30,
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: onDeleteTap,
                child: SvgPicture.asset(
                  'assets/icons/delete.svg',
                  color: AppColor.iconColor,
                  height: 30,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
