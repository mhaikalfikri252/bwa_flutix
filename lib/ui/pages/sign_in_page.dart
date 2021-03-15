part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 70,
                  child: Image.asset('assets/logo.png'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 70,
                    bottom: 70,
                  ),
                  child: Text(
                    'Welcome Back,\nExplorer!',
                    style: blackTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Email Address',
                    hintText: 'Email Address',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password Address',
                    hintText: 'Password Address',
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      'Forgot Password? ',
                      style: greyTextFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Get Now',
                      style: purpleTextFont.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(
                      top: 40,
                      bottom: 30,
                    ),
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.arrow_forward,
                      ),
                      backgroundColor: mainColor,
                      onPressed: () {},
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Start Fresh Now? ',
                      style: greyTextFont.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: purpleTextFont,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
