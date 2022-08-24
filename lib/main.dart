import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev3/colors..dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en", ""),
        Locale("tr", ""),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Homies",
          style: TextStyle(fontFamily: "paprika", fontSize: 25),
        ),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Column(children: [
        Image.asset("images/home_ispanya.png",
            height: 240, width: 450, fit: BoxFit.fill),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Column(
            children: [
              Text(
                d!.evBaslik,
                style: TextStyle(
                  fontSize: 25,
                  color: textColor1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star_rate_rounded,
                      size: 15,
                    ),
                    Text("4,98 - "),
                    Text(
                      d.degerlendirmeYazi,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: textColor1),
                    ),
                  ],
                ),
              ),
              Text(d.konumYazi),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          indent: 30,
          endIndent: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 2, right: 50, left: 50),
          child: Row(children: [
            Column(
              children: [
                Text(d.sahibYazi,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(d.superYazi),
              ],
            ),
            const Spacer(),
            Image.asset("images/profile.png", height: 60, width: 60),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(content: d.misafirYazi),
              Chip(content: d.havuzYazi),
              Chip(content: d.yatakYazi),
              Chip(content: d.banyoYazi),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          indent: 30,
          endIndent: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 5, bottom: 5),
          child: Column(
            children: <Widget>[
              //basic example
              Row(children: [
                Icon(Icons.calendar_month),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    d.takvimYazi,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                )
              ]),
              Row(
                children: [
                  Icon(Icons.door_back_door),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      d.kapiYazi,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      d.konum1Yazi,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          thickness: 2,
          indent: 30,
          endIndent: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 2),
          child: Row(
            children: [
              Text(
                d.fiyatYazi,
                style: TextStyle(
                    fontSize: 23,
                    color: textColor1,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(d.geceYazi,
                    style: TextStyle(fontSize: 15, color: textColor1)),
              ),
              const Spacer(),
              SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    d.buttonYazi,
                    style: TextStyle(color: textColor2, fontSize: 18),
                  ),
                  style: TextButton.styleFrom(backgroundColor: mainColor),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class Chip extends StatelessWidget {
  String content;

  Chip({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 74,
      child: Container(
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Center(
            child: Text(
              content,
              style: TextStyle(color: textColor2),
            ),
          )),
    );
  }
}
