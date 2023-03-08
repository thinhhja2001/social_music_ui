import '../stream_page/widgets/stream_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sharing_music_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StreamPage extends StatelessWidget {
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
              Container(
                height: getVerticalSize(
                  666,
                ),
                child: ListView.separated(
                  padding: getPadding(
                    left: 16,
                    top: 21,
                    bottom: 43,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        21,
                      ),
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return StreamItemWidget();
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
