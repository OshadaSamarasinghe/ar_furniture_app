// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  bool hidepassword = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0,
                top: 120,
                child: SizedBox(
                  width: 400,
                  height: 400,
                  child: Image(image: AssetImage('images/Login.png')),
                ),
              ),
              Positioned(
                top: 60,
                left: 100,
                child: SizedBox(
                  width: 400,
                  height: 200,
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      shadows: [
                        Shadow(
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(5, 5),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 400,
                left: 10,
                child: SizedBox(
                  width: 370,
                  height: 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 4),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelText: 'Username',
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 480,
                left: 10,
                child: SizedBox(
                  width: 370,
                  height: 100,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 535,
                left: 10,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot the Password?',
                    style: TextStyle(fontSize: 17, color: Colors.purple),
                  ),
                ),
              ),
              Positioned(
                top: 590,
                left: 80,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(220, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
