import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holding_app/src/theme/app_theme.dart';

import '../../model/warehouse_product_model/warehouse_product_model.dart';
import '../../utils/utils_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<WarehouseModel> product = [
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yo'q",
      long: "kg",
      isSelected: false,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yo'q",
      long: "kg",
      isSelected: false,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yo'q",
      long: "kg",
      isSelected: false,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
    WarehouseModel(
      image: "assets/images/product_1.png",
      name: "Starbucks",
      sroc: "Yaxshi",
      long: "kg",
      isSelected: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getWidth(context);
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              SizedBox(
                width: 16 * w,
              ),
              const Text(
                "Rasm",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black,
                ),
              ),
              SizedBox(width: 14 * w),
              Text(
                "Maxsulot nomi",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: AppTheme.black,
                ),
              ),
              Spacer(),
              Container(
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppTheme.lightGreen,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    "Xolati",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: AppTheme.lightGreen,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 36 * w),
              const Text(
                "Miqdori",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: AppTheme.black,
                ),
              ),
              SizedBox(width: 16 * w),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 6,
            ),
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppTheme.gray,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: product.length,
            itemBuilder: (BuildContext context, index) {
              return Column(
                children: [
                  SizedBox(height: 12 * h),
                  Row(
                    children: [
                      SizedBox(
                        width: 16 * w,
                      ),
                      Container(
                        width: 48 * w,
                        height: 48 * h,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Image.asset(
                            product[index].image,
                            width: 48,
                            height: 48,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 12 * w),
                      Text(
                        product[index].name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: AppTheme.black,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: product[index].isSelected
                                ? AppTheme.lightGreen
                                : AppTheme.red,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            product[index].sroc,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: product[index].isSelected
                                  ? AppTheme.lightGreen
                                  : AppTheme.red,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 68 * w),
                      Text(
                        product[index].long,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: AppTheme.black,
                        ),
                      ),
                      SizedBox(width: 16 * w),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 2,
                    ),
                    width: double.infinity,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppTheme.gray,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
