// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:project_flutter/pages/home_page.dart';
import 'package:project_flutter/theme.dart';

// login

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  var nUsername, nPassword;
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/login_image.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'LOG IN',
                style: titleTextStyle.copyWith(
                  fontSize: 20,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: myUsernameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: bgColor,
                            labelText: 'Username',
                            labelStyle: orangeTextStyle,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: primaryColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: primaryColor)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          obscureText: _isObscure,
                          keyboardType: TextInputType.text,
                          controller: myPasswordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: bgColor,
                            labelText: 'Password',
                            labelStyle: orangeTextStyle,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: primaryColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: primaryColor)),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: primaryColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 210,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {
                                nUsername = myUsernameController.text;
                                nPassword = myPasswordController.text;
                              if (_formKey.currentState!.validate()) {
                                if(nUsername !='Adie'){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Username is incorrect'),
                                    ),
                                  );
                                }else if(nPassword !='Indonesia'){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Password is incorrect'),
                                    ),
                                  );
                                
                              }else{
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(
                                      nama:nUsername
                                    ),
                                  ),
                                );
                              }
                            }
                            },
                            color: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text('Login',
                                style: titleTextStyle.copyWith(fontSize: 15)),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
