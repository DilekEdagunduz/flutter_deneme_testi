import 'package:flutter/material.dart';

import 'secenek_widget.dart';

class DenemePage extends StatefulWidget {
  final int denemeId;
  DenemePage({@required this.denemeId});
  @override
  _DenemePageState createState() => _DenemePageState();
}

class _DenemePageState extends State<DenemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('deneme ${widget.denemeId}'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (contex, index) {
          return Card(
            color: Colors.blue.shade100,
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 4),
                  child: Text("Soru ${index + 1}"),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Aşağıda hangi cümlede '' köpürmek '' sözcüğü '' sinirlerine hakim olamamak kendini tutamamak '' anlamında kullanılmaktadır ?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SecenekWidget(
                  secenek: Secenek.A,
                  text:
                      "Sınavdan öyle düşük not aldım ki babam sinirden köpürmüştü",
                ),
                SecenekWidget(
                  secenek: Secenek.B,
                  text: "Öyle yağmur yağdı ki deniz çok fena köpürdü",
                ),
                SecenekWidget(
                  secenek: Secenek.C,
                  text: "Banyodaki jel çok fazla köpürüyor.",
                ),
                SecenekWidget(
                  secenek: Secenek.D,
                  text: "Mehmet arabayı köpükler içinde bıraktı.",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
