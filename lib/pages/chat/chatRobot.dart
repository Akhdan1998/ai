part of '../pages.dart';

class chatRobot extends StatefulWidget {
  late final Ai? ai;
  String? token;

  chatRobot(this.ai, this.token);

  @override
  State<chatRobot> createState() => _chatRobotState();
}

class _chatRobotState extends State<chatRobot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      // color: Colors.red,
      color: 'FFF4F4'.toColor(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/parentoday.png', scale: 2),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width - 90,
            child: Text(
              widget.ai!.content ?? '',
              style: GoogleFonts.poppins().copyWith(
                fontWeight: FontWeight.w300,
                color: '484848'.toColor(),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
