import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/review_detail/widgets/read_more_text.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class AddOnesContainer extends StatefulWidget {
  const AddOnesContainer({super.key});

  @override
  State<AddOnesContainer> createState() => _AddOnesContainerState();
}

class _AddOnesContainerState extends State<AddOnesContainer> {
  bool addOnsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: kWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add Ons(Optional)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: addOnsChecked,
                      onChanged: (value) {
                        setState(() {
                          addOnsChecked = value!;
                        });
                      },
                    ),
                    Expanded(
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('asset/image/myair_deal_logo.png'),
                        ),
                        title: Text(
                          'Take off: Giving children a second chance at life',
                          style: textHeadStyle1.copyWith(
                              fontSize: 11.sp, fontWeight: FontWeight.w300),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: const ReadMoreText(
                          text:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          color: kWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 2,
          child: ListTile(
            title: const Text('Add GST Details (Optional)'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        )
      ],
    );
  }
}
