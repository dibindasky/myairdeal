import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Dperson&psig=AOvVaw0raiQQ43--C1-oRLUPQELR&ust=1717594071743000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOiA69eGwoYDFQAAAAAdAAAAABAE'),
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
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text('Change Now'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final String? iconImage;

  ProfileField({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomTextField(hintText: 'Name', fillColor: kGreyLight),
            Row(
              children: [
                iconImage != null
                    ? Image.network(iconImage!, width: 24, height: 24)
                    : Icon(icon, size: 24),
                kWidth20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(value, style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
