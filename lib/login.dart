import 'package:flutter/material.dart';
import 'package:flutter_login_signup/signup.dart';

class Login extends StatefulWidget {
  static const String routeName = 'login';

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                child: const Text(
                  'Hello',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                child: const Text(
                  'There',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                child: const Text(
                  '.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 25.0,
                    bottom: 25.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        ImageIcon(AssetImage('assets/facebook.png')),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Login in with Facebook',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Need an account?',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(SignUp.routeName);
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
