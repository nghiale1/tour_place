import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class FacilitiesSection extends StatelessWidget {
  const FacilitiesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Facilities',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2A2A2A),
          ),
        ),
        SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _FacilityItem('Free Wifi'),
            _FacilityItem('Pool'),
            _FacilityItem('Breakfast'),
            _FacilityItem('Lunch'),
          ],
        ),
      ],
    );
  }
}

class _FacilityItem extends StatelessWidget {
  final String text;

  const _FacilityItem(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/check.svg', width: 16, height: 16,),
          SizedBox(width: 6,),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF696969),
            ),
          ),
        ],
      ),
    );
  }
}