import 'package:flutter/material.dart';

void main() {
  runApp(CartaoVisita());
}

class CartaoVisita extends StatelessWidget {
  const CartaoVisita({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão de Visita',
      home: CardPage(),
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Cartão de Visita Virtual!',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),

      body: Center(
        child: Card(
          shadowColor: Colors.blueGrey,
          color: Colors.grey[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          margin: const EdgeInsets.all(20.0),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/v2/D5603AQGQJx0Nrwg64g/profile-displayphoto-shrink_800_800/B56ZTCMcIAGQAc-/0/1738424832310?e=1752710400&v=beta&t=geGWVP9gSi7l9qLnXFAll_lSE7CA2WYV8HZbRLltjMU",
                  ),
                  radius: 100,
                ),
                SizedBox(height: 16),
                Text(
                  'Alef Luciano',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  'Desenvolvedor Mobile',
                  style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                ),

                Divider(thickness: 2, color: Colors.blueGrey, height: 20),
                Text(
                  'Hard Skills',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 10),

                Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    Chip(
                      label: Text(
                        'Dart',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    Chip(
                      label: Text(
                        'Flutter',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    Chip(
                      label: Text('SQL', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
