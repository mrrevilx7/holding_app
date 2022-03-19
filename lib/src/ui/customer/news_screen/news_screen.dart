import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, i) {
            return Container();
          }),
    );
  }
}
