

import 'package:flutter/material.dart';
import 'package:holding_app/src/utils/utils_screen.dart';
import '../../model/information_model/information_model.dart';
import '../../theme/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InforGridWidget extends StatelessWidget {
  final InformationModel data;
  final Function() onTap;

  const InforGridWidget({
    Key? key,
    required this.onTap,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppTheme.levender,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Text(
                data.deressName,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: AppTheme.magenta,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/person1.svg",
                    width: 15,
                    height: 15,
                  ),
                  SizedBox(width: 4),
                  Text(
                    data.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: AppTheme.magenta,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/calendar.svg",
                    width: 15,
                    height: 15,
                  ),
                  SizedBox(width: 4),
                  Text(
                    dateTime.day.toString() + "." + dateTime.month.toString()  + "." + dateTime.year.toString(),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                      color: AppTheme.magenta.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/vector_price.svg",
                    width: 15,
                    height: 15,
                  ),
                  SizedBox(width: 4),
                  Text(
                    data.price.toDouble().toString() + " ",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: AppTheme.magenta.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
          Spacer(),
          Container(
            width: 56 * w,
            height: 56 * w,
            margin: const EdgeInsets.only(
              right: 4,
              top: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(56),
              color: Colors.transparent,
            ),
            child: Image.asset(
              data.image,
            ),
          ),
        ],
      ),
    );
  }
}
