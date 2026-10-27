
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F3FF),
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: const Color(0xFFF1F3FF),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x263B4DCC),
                  blurRadius: 30,
                  offset: Offset(0, 12),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Gradient header
                Container(
                  height: 140,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF20B9F5),
                        Color(0xFF594BFF),
                        Color(0xFFC32DFA),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(28),
                    ),
                  ),
                ),

                // Profile image
                Transform.translate(
                  offset: const Offset(0, -65),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.12),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xFFE0E7FF),
                          child: Icon(
                            Icons.person,
                            size: 65,
                            color: Color(0xFF5145CD),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        'Md Mizanur Rahman',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF172554),
                        ),
                      ),

                      const SizedBox(height: 6),

                      const Text(
                        'Laravel & Flutter Developer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF5956E9),
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 15),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        child: Text(
                          'I build modern web and mobile applications '
                              'with clean code and great user experiences.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.6,
                            color: Color(0xFF64748B),
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      // Statistics
                      const Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          StatItem(
                            icon: Icons.work_outline,
                            value: '2+',
                            label: 'Experience',
                          ),
                          StatItem(
                            icon: Icons.code,
                            value: '15+',
                            label: 'Projects',
                          ),
                          StatItem(
                            icon: Icons.people_outline,
                            value: '10+',
                            label: 'Clients',
                          ),
                        ],
                      ),

                      const SizedBox(height: 28),

                      // Skills
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'My Skills',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172554),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          alignment: WrapAlignment.center,
                          children: [
                            SkillChip(label: 'Laravel'),
                            SkillChip(label: 'PHP'),
                            SkillChip(label: 'Flutter'),
                            SkillChip(label: 'Dart'),
                            SkillChip(label: 'MySQL'),
                            SkillChip(label: 'React'),
                          ],
                        ),
                      ),

                      const SizedBox(height: 28),

                      // Action buttons
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: FilledButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.mail_outline),
                                label: const Text('Message'),
                                style: FilledButton.styleFrom(
                                  backgroundColor:
                                  const Color(0xFF594BFF),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.person_add_alt_1),
                                label: const Text('Follow'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor:
                                  const Color(0xFF594BFF),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 25),
                    ],
                  ),
                ).buildWithSpace(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Statistics widget
class StatItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const StatItem({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFF594BFF), size: 26),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}

// Skills chip widget
class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEEEEFF),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFFDEDDFF),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFF5145CD),
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

extension WidgetSpacing on Widget {
  Widget buildWithSpace() {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: this,
    );
  }
}
