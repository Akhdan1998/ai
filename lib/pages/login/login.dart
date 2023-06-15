part of '../pages.dart';

class loginGoogle extends StatefulWidget {
  @override
  State<loginGoogle> createState() => _loginGoogleState();
}

class _loginGoogleState extends State<loginGoogle> {
  // Future signIn() async {
  //   final user = await GoogleSignInApi.login();
  //   if (user == null) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text('Sign In Failed'),
  //       ),
  //     );
  //   } else {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => chat(user: user),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Image.asset('assets/loginGoogle.png', scale: 2),
            SizedBox(height: 20),
            Text(
              'Halo Bunda,',
              style: GoogleFonts.poppins().copyWith(
                fontWeight: FontWeight.bold,
                color: '323232'.toColor(),
                fontSize: 24,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Silahkan Login atau Mendaftar untuk melanjutkan fitur parentoday.ai',
              style: GoogleFonts.poppins().copyWith(
                fontWeight: FontWeight.w300,
                color: '989797'.toColor(),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 11, bottom: 20, right: 16, left: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5,
            primary: Colors.white,
            onPrimary: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {
            //
            // final provider =
            //     Provider.of<GoogleSignInProvider>(context, listen: false);
            // provider.googleLogin();
            //
            // if (FirebaseAuth.instance.currentUser == null) {
            //   GoogleSignInAccount? account = await GoogleSignIn().signIn();
            //
            //   if (account != null) {
            //     GoogleSignInAuthentication auth = await account.authentication;
            //     OAuthCredential credential = GoogleAuthProvider.credential(
            //       accessToken: auth.accessToken,
            //       idToken: auth.idToken,
            //     );
            //     await FirebaseAuth.instance.signInWithCredential(credential);
            //   }
            // }
            //
            // final provider =
            //     Provider.of<GoogleSignInProvider>(context, listen: false);
            // provider.googleLogin();
            Get.to(chat());
          },
          child: Container(
            padding: EdgeInsets.only(top: 11, bottom: 11),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/google.png', scale: 1.5),
                SizedBox(width: 5),
                Text(
                  'Masuk/Daftar dengan Google',
                  style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.bold,
                    color: '6D6D6D'.toColor(),
                    fontSize: 13,
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
