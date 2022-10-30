import 'package:flutter/material.dart';
import 'package:sayi_tahmin_oyunu/tahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black26,
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.black,
        title: const Center(child: Text("Anasayfa")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "Tahmin Oyunu",
              style: TextStyle(color: Colors.lightGreenAccent, fontSize: 36),
            ),
            Image.asset("resimler/giris.jpg"),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => tahminEkrani()));
                  }),
                  child: Text("Oyuna Başla"),
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
