import 'package:flutter/material.dart';
import 'package:holding_app/src/utils/utils_screen.dart';
import '../../model/information_model/information_model.dart';
import '../../theme/app_theme.dart';

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
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      height: 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppTheme.black,
      ),
      child: Row(
        children: [
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Text(
                data.deressName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: AppTheme.magenta,
                ),
              ),
              Text(
                data.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: AppTheme.magenta,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
