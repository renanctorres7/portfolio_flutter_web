import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app/shared/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPageWidget extends StatelessWidget {
  final String image;
  final String text;
  final String url;

  const ContactPageWidget(
      {Key? key, required this.image, required this.text, required this.url})
      : super(key: key);

  void launchURL() async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: launchURL,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            child: SvgPicture.asset(image),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: SelectableText(
              text,
              style: TextStyle(
                  fontSize: 16, color: graphite, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
