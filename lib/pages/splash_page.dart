// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:project_flutter/theme.dart';
import 'package:project_flutter/pages/login_page.dart';
import 'login_page.dart';

// splash page
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/splash_image.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'EXPLORE THE\nPARADISE\nIN THE WORD',
                style: titleTextStyle.copyWith(
                  fontSize: 40,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 400),
              SizedBox(
                width: 210,
                height:50,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Text(
                    'Get Started',
                    style: titleTextStyle.copyWith(
                      fontSize: 15
                    )
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

