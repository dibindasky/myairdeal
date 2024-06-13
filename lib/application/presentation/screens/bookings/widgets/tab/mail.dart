import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class EmailListScreen extends StatelessWidget {
  final List<Email> emails = [
    Email(
      senderName: "Senders Name",
      subject: "Subject goes here",
      messagePreview: "Norem ipsum dolor sit amet, consectetur...",
      date: "Mar 1",
      avatarLetter: "E",
      avatarColor: kPurple,
    ),
    Email(
      senderName: "Senders Name",
      subject: "Subject goes here",
      messagePreview: "Norem ipsum dolor sit amet, consectetur...",
      date: "Mar 1",
      avatarLetter: "E",
      avatarColor: kPurple,
    ),
    Email(
      senderName: "Sender Name",
      subject: "Subject goes here",
      messagePreview: "Norem ipsum dolor sit amet, consectetur...",
      date: "Mar 1",
      avatarLetter: "E",
      avatarColor: kPurple,
    ),
    Email(
      senderName: "Figma",
      subject: "Here’s your livestreams lineup",
      messagePreview: "Hi there, Since you registered for a...",
      date: "Mar 1",
      avatarLetter: "F",
      avatarColor: kBlue,
    ),
  ];

  EmailListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: emails.length,
      itemBuilder: (context, index) {
        return EmailListItem(email: emails[index]);
      },
    );
  }
}

class Email {
  final String senderName;
  final String subject;
  final String messagePreview;
  final String date;
  final String avatarLetter;
  final Color avatarColor;

  Email({
    required this.senderName,
    required this.subject,
    required this.messagePreview,
    required this.date,
    required this.avatarLetter,
    required this.avatarColor,
  });
}

class EmailListItem extends StatelessWidget {
  final Email email;

  const EmailListItem({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: email.avatarColor,
        child: Text(
          email.avatarLetter,
          style: textStyle1.copyWith(color: kWhite),
        ),
      ),
      title: Text(
        email.senderName,
        style:
            textStyle1.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            email.subject,
            style: textThinStyle1,
          ),
          Text(
            email.messagePreview,
            style: textThinStyle1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      trailing: Text(email.date),
    );
  }
}
