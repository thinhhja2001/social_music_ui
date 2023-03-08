import '../trending_page/widgets/trending_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TrendingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 15,
                  top: 27,
                  right: 16,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        24,
                      ),
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return TrendingItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
