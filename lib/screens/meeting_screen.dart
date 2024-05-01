import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/jitsi_meet_methods.dart';
import 'package:zoom_clone/widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({
    super.key,
  });
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  creatNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(1000000) + 1000000).toString();

    _jitsiMeetMethods.createMeething(
        roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: creatNewMeeting,
              text: 'New Meeting',
              icon: Icons.videocam,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Join Meeting',
              icon: Icons.add_box_rounded,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Schedule Meeting',
              icon: Icons.calendar_today,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward_outlined,
            )
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Create/Join Meetings with just a click!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
