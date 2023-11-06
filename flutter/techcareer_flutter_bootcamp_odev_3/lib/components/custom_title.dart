import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_3/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final Function()? viewAllOnTap;

  const CustomTitle({super.key, required this.title, this.viewAllOnTap});
  @override
  Widget build(BuildContext context) {
    var loc = AppLocalizations.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: oDarkColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: viewAllOnTap,
          child: Row(
            children: [
              Text(
                loc!.viewAll,
                style: TextStyle(
                  color: oTextColor,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_right_alt_outlined,
                color: oTextColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
