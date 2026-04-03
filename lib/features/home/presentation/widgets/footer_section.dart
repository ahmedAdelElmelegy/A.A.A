import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/function/url_function.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';
import 'package:portfolio/core/utils/app_utils.dart';
import 'package:portfolio/features/home/presentation/widgets/footer_icon.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppSpacing.space3xl,
        horizontal: AppUtils.isDesktop(context) ? AppSpacing.space3xl : AppSpacing.md,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ColorManager.secondary, ColorManager.primary],
        ),
      ),
      child: Column(
        children: [
          Text(
            'Get in Touch',
            style: AppStyle.h2.copyWith(
              color: Colors.white,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            'Feel free to reach out anytime — I’m always open to new projects.',
            textAlign: TextAlign.center,
            style: AppStyle.bodyBold.copyWith(
              color: Colors.white.withValues(alpha: 0.9),
              height: 1.6,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Line Separator
          Container(
            width: 80,
            height: 2,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: AppRadius.radiusFull,
            ),
          ),

          const SizedBox(height: AppSpacing.xl),

          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            spacing: AppSpacing.md,
            children: [
              FooterIcon(
                icon: FontAwesomeIcons.envelope,
                onTap: () {
                  showCopyNumberDialog(
                    context,
                    'ahmedadelelmelegy2@gmail.com',
                    "Gmail",
                  );
                },
              ),
              FooterIcon(
                icon: FontAwesomeIcons.phone,
                onTap: () {
                  showCopyNumberDialog(
                    context,
                    '01069371116',
                    "Contact Number",
                  );
                },
              ),
              FooterIcon(
                icon: FontAwesomeIcons.linkedin,
                onTap: () {
                  openLink(
                    'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQH5BXnybWBkEgAAAZsOBt8QP3HViinZWzVniqb0wDGuhJdq2vtusz_u3mc9fFZ3ufEE1_r7cBmtvPkR6L5VbO5ZicRtqgY6oAb4ol8ZI2VbCMkDiLjyT_FA4fRpjKx6RhTNSmc=&original_referer=https://www.google.com/&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fahmed-adel-110467373',
                  );
                },
              ),
              FooterIcon(
                icon: FontAwesomeIcons.github,
                onTap: () {
                  openLink('https://github.com/ahmedAdelElmelegy');
                },
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.space3xl),

          Text(
            '© ${DateTime.now().year} Ahmed Adel. All Rights Reserved.',
            style: AppStyle.body.copyWith(
              color: Colors.white.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}
