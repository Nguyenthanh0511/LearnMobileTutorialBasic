import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Builder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  final Future<String> _calculation =
      Future.delayed(const Duration(seconds: 5), () => "CNTT 16-06");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FutureBuilder(
              future: _calculation,
              builder: (BuildContext context, AsyncSnapshot<String> snapShot) {
                List<Widget> children = [Text("Thanh"), Text("Trung"),Text("Nguyen")];
                if (snapShot.hasData) {
                  children = <Widget>[
                    const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Text(snapShot.data!),
                    )
                  ];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:children
                  );
                } else if (snapShot.hasError) {
                  children = <Widget>[
                    const Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text("Error : ${snapShot.error}"),
                    )
                  ];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: children,
                  );
                } else {
                  return const Text("Hai anh");
                }
                //Return
              }),
        ),
      ),
    );
  }
}