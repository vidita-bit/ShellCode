import 'package:flutter/material.dart';
import 'package:shellcode/auth/otp.dart';
import 'package:shellcode/auth/register_username.dart';
import 'package:shellcode/utils.dart';

class PhoneAuth extends StatelessWidget {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Utils().height = MediaQuery.of(context).size.height;
    Utils().width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30.0),
        // padding: EdgeInsets.fromLTRB(
        //   Utils().width * 0.1,
        //   Utils().height * 0.001,
        //   Utils().width * 0.01,
        //   Utils().height * 0.001,
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: key,
              child: Wrap(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 60,
                      //height: 50,
                      child: Center(
                        child: TextFormField(
                          controller: _emailController,
                          enabled: false,
                          // maxLength: 1,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            fillColor: Color(0xffEFEFEF),
                            filled: true,
                            hintText: '+91',
                            hintStyle: TextStyle(
                              color: Color(0xffA1A1A1),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffA1A1A1),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 240,
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        decoration: InputDecoration(
                          fillColor: Color(0xffEFEFEF),
                          filled: true,
                          hintText: 'Enter Phone Number',
                          hintStyle: TextStyle(
                            color: Color(0xffA1A1A1),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Otp(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffC9002B),
                padding: EdgeInsets.symmetric(
                  horizontal: 45,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: Text(
                'Send OTP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
