import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible de lancer $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
              radius: 80,
            ),
            const SizedBox(height: 20),
            const Text(
              'Christian Bastide',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Personal website',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/linkedin2.svg',
                    width: 64,
                  ),
                  onPressed: () {
                    _launchURL(
                        "https://www.linkedin.com/in/christian-bastide-0b5209125");
                  },
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/github2.svg',
                    width: 64,
                  ),
                  onPressed: () {
                    _launchURL("https://github.com/Climarxt");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
