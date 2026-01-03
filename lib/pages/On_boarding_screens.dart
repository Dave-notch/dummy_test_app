import 'package:flutter/material.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            final height = constraints.maxHeight;

            return PageView(
              children: [
                _page(
                  width: width,
                  title: "Hello!",
                  subtitle: "Ready to make your day productive?",
                  gradient: const [Colors.green, Colors.red],
                  buttonIcon: Icons.next_plan,
                  buttonText: "Next",
                ),
                _page(
                  width: width,
                  title: "Welcome!!",
                  subtitle:
                      "Stay organized, stress less, and get more done every single day!!",
                  gradient: const [Color(0xFF276C9D), Color(0xFF5B0C5E)],
                  buttonIcon: Icons.login,
                  buttonText: "Get Started!!",
                  onTap: () {},
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _page({
    required double width,
    required String title,
    required String subtitle,
    required List<Color> gradient,
    required IconData buttonIcon,
    required String buttonText,
    VoidCallback? onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: gradient,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.06,
              vertical: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 70,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 0
                      ..color = Colors.white.withOpacity(0.7),
                  ),
                ),

                const SizedBox(height: 16),

                // Subtitle
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: (width * 0.06).clamp(18, 36),
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),

                const Spacer(),

                // Button
                Align(
                  alignment: Alignment.bottomRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Material(
                      color: const Color(0xFFE5EAE6),
                      child: InkWell(
                        onTap: onTap,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(buttonIcon, color: Colors.black),
                              const SizedBox(width: 8),
                              Text(
                                buttonText,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
