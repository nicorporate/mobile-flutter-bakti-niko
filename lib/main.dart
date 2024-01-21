import 'package:flutter/material.dart';
import 'detailPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bakti Apps',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        title:  Image.asset('img/logo 2.png', width: 100, height: 100),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => detailPages(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("LARIKE", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                                  Text("MLU0016", style: TextStyle(
                                    fontSize: 16,
                                  )),
                                ],
                              ),
                            )
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text("14230 Km", style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16,
                              ))
                            ],
                          ),),
                      ],
                    ),
                  )
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("TABUAH ELOK", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                              Text("KLB00615", style: TextStyle(
                                fontSize: 16,
                              ))
                            ],
                          ),
                        )
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text("12188 Km", style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                          ))
                        ],
                      ),),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}