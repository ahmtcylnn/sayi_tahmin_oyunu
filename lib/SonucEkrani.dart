import 'package:flutter/material.dart';

class sonucEkrani extends StatefulWidget {
  bool sonuc;

  sonucEkrani({required this.sonuc});

  @override
  State<sonucEkrani> createState() => _sonucEkraniState();
}

class _sonucEkraniState extends State<sonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.black,
        title: const Center(child: Text("Sonuç Ekranı")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            widget.sonuc
                ? Image.asset("resimler/win.jpg")
                : Image.asset("resimler/lose.jpg"),
            Text(
              widget.sonuc ? "Kazandınız ! " : "Kaybettiniz",
              style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 36),
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: const Text("Tekrar Dene"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    shadowColor: Colors.black,
                    elevation: 10,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
