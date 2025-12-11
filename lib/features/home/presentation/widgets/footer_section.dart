import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/function/url_function.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/features/home/presentation/widgets/fotter_icon.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff1E40AF), Color(0xFF3B82F6)],
        ),
      ),
      child: Column(
        children: [
          Text(
            'Get in Touch',
            style: AppStyle.f35UrbanistBold.copyWith(
              color: Colors.white,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Feel free to reach out anytime — I’m always open to new projects.',
            textAlign: TextAlign.center,
            style: AppStyle.f16UrbanistBold.copyWith(
              color: Colors.white.withValues(alpha: 0.85),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 24),

          // Line Separator
          Container(
            width: 80,
            height: 1,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          const SizedBox(height: 24),

          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: 16,
            children: [
              FotterIcon(
                icon: FontAwesomeIcons.envelope,
                onTap: () {
                  showCopyNumberDialog(
                    context,
                    'ahmedadelelmelegy2@gmail.com',
                    "Gmail",
                  );
                },
              ),
              FotterIcon(
                icon: FontAwesomeIcons.phone,
                onTap: () {
                  showCopyNumberDialog(
                    context,
                    '01069371116',
                    "Contact Number",
                  );
                },
              ),
              FotterIcon(
                icon: FontAwesomeIcons.linkedin,
                onTap: () {
                  openLink(
                    'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQH5BXnybWBkEgAAAZsOBt8QP3HViinZWzVniqb0wDGuhJdq2vtusz_u3mc9fFZ3ufEE1_r7cBmtvPkR6L5VbO5ZicRtqgY6oAb4ol8ZI2VbCMkDiLjyT_FA4fRpjKx6RhTNSmc=&original_referer=https://www.google.com/&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fahmed-adel-110467373',
                  );
                },
              ),
              FotterIcon(
                icon: FontAwesomeIcons.github,
                onTap: () {
                  openLink('https://github.com/ahmedAdelElmelegy');
                },
              ),
            ],
          ),

          const SizedBox(height: 32),

          Text(
            '© 2025 Ahmed Adel. All Rights Reserved.',
            style: AppStyle.f16UrbanistMeduim.copyWith(
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
