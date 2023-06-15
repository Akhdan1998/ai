part of '../pages.dart';

class chat extends StatefulWidget {
  // final GoogleSignInAccount user;
  //
  // chat({Key? key, required this.user}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  final pertanyaan = TextEditingController();

  @override
  void initState() {
    super.initState();
    context
        .read<AiCubit>()
        .getAi('1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4');
    String time = DateTime
        .now()
        .millisecondsSinceEpoch
        .toString()
        .substring(0, 10);
  }

  Future<void> cari() async {
    try {
      Uri url_ = Uri.parse(
          'https://dashboard.parentoday.com/api/chat/ai');
      var res = await http.post(
        url_,
        body: {
          'prompt': pertanyaan,
          'random_id':,
        },
        headers: {
          "Accept": "application/json",
          "Authorization":
          "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
        },
      );
      Map<String, dynamic> body = jsonDecode(res.body);
      if (res.statusCode == 200) {
        bool data = body["data"];
      } else {
        throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: 'FFFFFF'.toColor(),
        automaticallyImplyLeading: false,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parentoday.ai',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: '5E5E5E'.toColor(),
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Silahkan konsultasi seputar parenting',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    color: '959595'.toColor(),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: '80B541'.toColor(),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Online',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w300,
                    color: '80B541'.toColor(),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BlocBuilder<AiCubit, AiState>(
          builder: (context, snapshot) {
            if (snapshot is AiLoaded) {
              if (snapshot.ai != null) {
                return Column(
                  children: snapshot.ai!
                      .mapIndexed(
                        (int index, e) =>
                        Column(
                          children: [
                            chatUser(),
                            chatRobot(e, ''),
                          ],
                        ),
                  )
                      .toList(),
                );
              } else {
                return SizedBox();
              }
            } else {
              return SizedBox();
            }
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        height: 104,
        padding: EdgeInsets.only(top: 11, bottom: 20, right: 16, left: 16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 78,
                  child: TextField(
                    cursorColor: 'FF6969'.toColor(),
                    controller: pertanyaan,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                        BorderSide(width: 1, color: 'FF6969'.toColor()),
                      ),
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 5, bottom: 5),
                      hintStyle: GoogleFonts.poppins().copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: '989797'.toColor(),
                      ),
                      hintText: 'Tanya seputar parenting...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: 'FF6969'.toColor(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.send, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Penatibus sagittis fermentum risus neque. Cras vestibulum blandit sit scelerisque.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                fontWeight: FontWeight.w300,
                color: '959595'.toColor(),
                fontSize: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
