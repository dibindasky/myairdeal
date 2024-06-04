import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://example.com/profile.jpg'),
          ),
          SizedBox(height: 16),
          ProfileField(
            icon: Icons.person,
            label: 'Username',
            value: 'Jayasuyrya',
          ),
          ProfileField(
            icon: Icons.email,
            label: 'Email or Phone Number',
            value: 'Suryaj8999@gmail.com',
          ),
          ProfileField(
            icon: Icons.link,
            label: 'Account Linked With',
            value: 'Google',
            iconImage: 'https://example.com/google_icon.png',
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: Text('Change Now'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String? iconImage;

  ProfileField(
      {super.key,
      required this.icon,
      required this.label,
      required this.value,
      this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          iconImage != null
              ? Image.network(iconImage!, width: 24, height: 24)
              : Icon(icon, size: 24),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(value, style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
