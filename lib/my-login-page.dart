import 'dart:ui';

import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        //  margin: EdgeInsets.only(bottom: 24),
        //     width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "images/boyfishing.jpg",
          ),
          fit: BoxFit.cover,
        )),
        child: Column(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                      child: Text(
                        'Share your Travel experiences and find trusted recs from your friends.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: FlatButton(
                                minWidth: MediaQuery.of(context).size.width,
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                padding: EdgeInsets.only(
                                    right: 24, left: 24, top: 16, bottom: 16),
                                // color: Colors.blue,
                                textColor: Colors.blue,
                                child: Text(
                                  "Log in with phone number",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                onPressed: () => {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: FlatButton(
                                minWidth: MediaQuery.of(context).size.width,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                padding: EdgeInsets.only(
                                    right: 24, left: 24, top: 16, bottom: 16),
                                color: Colors.blue,
                                textColor: Colors.white70,
                                child: Text(
                                  "Log in with phone Facebook",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                onPressed: () => {}),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 16.0),
                            child: RichText(
                              text: TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "Log in",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.blue))
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
