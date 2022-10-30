import 'dart:math';

import 'package:flutter/material.dart';

import 'package:sayi_tahmin_oyunu/SonucEkrani.dart';

class tahminEkrani extends StatefulWidget {
  @override
  State<tahminEkrani> createState() => tahminEkraniState();
}

class tahminEkraniState extends State<tahminEkrani> {
  var tfTahmin = TextEditingController();
  int rasgeleSayi = 0;
  int kalanHak = 5;
  String yonlendirme = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    rasgeleSayi = Random().nextInt(101);
    print("Rasgele Sayı:$rasgeleSayi");
  }

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
              "Kalan Hak: $kalanHak ",
              style:
                  const TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
            ),

            // ignore: prefer_const_constructors
            Text(
              "Yardım : $yonlendirme",
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: prefer_const_constructors
              child: TextField(
                controller: tfTahmin,
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
                    setState(() {
                      kalanHak = kalanHak - 1;
                      FocusScope.of(context).unfocus();
                    });
                    int tahmin = int.parse(tfTahmin.text);

                    if (tahmin == rasgeleSayi) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sonucEkrani(
                                    sonuc: true,
                                  )));

                      return;
                    }
                    if (tahmin > rasgeleSayi) {
                      setState(() {
                        yonlendirme = "Tahmini Azalt";
                      });
                    }
                    if (tahmin < rasgeleSayi) {
                      setState(() {
                        yonlendirme = "Tahmini Arttır";
                      });
                    }
                    if (kalanHak == 0) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sonucEkrani(
                                    sonuc: false,
                                  )));
                    }
                    tfTahmin.text = "";

                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const sonucEkrani()));
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
