import 'package:flutter/material.dart';

import '../hotel_detail/components/about_section.dart';
import '../hotel_detail/components/facilities_section.dart';
import 'components/book_now_button.dart';
import 'components/place_image.dart';
import 'components/place_info.dart';

class PlaceDetailsScreen extends StatelessWidget {
  const PlaceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(maxWidth: 480),
          decoration: BoxDecoration(
            color: Color(0xFFFDFDFD),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlaceImage(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PlaceInfo(),
                    SizedBox(height: 24),
                    AboutSection(),
                    SizedBox(height: 24),
                    FacilitiesSection(),
                    SizedBox(height: 24),
                    BookNowButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}