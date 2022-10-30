import 'package:flutter/material.dart';

import 'package:sayi_tahmin_oyunu/SonucEkrani.dart';

class tahminEkrani extends StatefulWidget {
  const tahminEkrani({super.key});

  @override
  State<tahminEkrani> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<tahminEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.black,
        title: const Center(child: Text("Tahmin Ekranı")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // ignore: prefer_const_constructors
            Text(
              "Kalan Hak: 4 ",
              style:
                  const TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
            ),
            // ignore: prefer_const_constructors
            Text(
              "Yardım : Tahmini Azalt",
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: prefer_const_constructors
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    labelText: "Tahmin",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    filled: true,
                    fillColor: Colors.lightGreen,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
                style: const TextStyle(color: Colors.yellowAccent),
              ),
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const sonucEkrani()));
                  }),
                  // ignore: sort_child_properties_last
                  child: const Text("TAHMİN ET"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    shadowColor: Colors.lightGreen,
                    elevation: 10,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
