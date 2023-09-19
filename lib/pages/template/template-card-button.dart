import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCardButton extends StatelessWidget {
  final String svgAsset;
  final double svgHeight;
  final String title;
  final String description;
  final int color;

  const CustomCardButton({
    Key? key,
    required this.svgAsset,
    required this.svgHeight,
    required this.title,
    required this.description,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 386,
      height: 154,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(color),
          side: BorderSide(
            width: 2,
            color: Colors.black,
          ),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svgAsset,
              height: svgHeight,
              width: 120,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}