import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const String routeName = 'signup';

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                padding: const EdgeInsets.fromLTRB(15.0, 115.0, 0.0, 0.0),
                child: const Text(
                  'SignUp',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(260.0, 130.0, 0.0, 0.0),
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
                      labelText: 'NAME',
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
                      'SignUp',
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
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
                          Icon(Icons.arrow_back_ios),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Back to login',
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
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
