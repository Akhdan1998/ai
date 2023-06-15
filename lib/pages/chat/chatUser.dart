part of '../pages.dart';

class chatUser extends StatefulWidget {
  @override
  State<chatUser> createState() => _chatUserState();
}

class _chatUserState extends State<chatUser> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        color: Colors.white,
        // color: 'FFFFFF'.toColor(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/avatar.png', scale: 2),
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width - 90,
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Penatibus sagittis fermentum risus neque. Cras vestibulum blandit sit scelerisque.',
                style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w300,
                  color: '484848'.toColor(),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
