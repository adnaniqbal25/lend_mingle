import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lend_mingle/api/local_auth_api.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool authenticated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  "Hello, welcome back!",
                  style: GoogleFonts.leagueSpartan(
                      fontWeight: FontWeight.w600, fontSize: 24),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Login to continue",
                  style: GoogleFonts.leagueSpartan(fontSize: 16),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(color: Colors.grey[60]),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      disabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey[60]),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      disabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
                TextButton(
                  onPressed: () {},
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("Forgot password?")),
                ),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: 267,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/mainPage');
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () async {
                    final authenticate = await LocalAuthApi.authenticate();
                    setState(() {
                      authenticated = authenticate;
                    });
                    if (authenticated) {
                      Navigator.of(context).pushReplacementNamed('/mainPage');
                    }
                  },
                  icon: Icon(
                    Icons.fingerprint,
                    size: 40,
                  ),
                ),
                Text("Biometric login"),
                SizedBox(
                  height: 45,
                ),
                Text("Or sign in with"),
                SizedBox(
                  height: 34,
                ),
                SizedBox(
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/google.png'),
                          height: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Login with Google',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/facebook.png'),
                          height: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Login with Facebook',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Sign Up'),
                      style: TextButton.styleFrom(
                        foregroundColor: Color(0xff83A43F),
                        textStyle: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
