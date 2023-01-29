import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MyHomePage(title: 'Explore'),
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
          title: Text(
            widget.title,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.add,
                color: Color(0xFF4937F4),
              ),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Image.asset(
                            'assets/mount.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0, top: 8.0),
                          child: Text(
                            'Alamodome',
                            style: TextStyle(
                              color: Color(0xFF4937F4),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Divider(
                          indent: 16,
                          endIndent: 16,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(
                            'Charity 5K Race for a Cure',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Short description goes here and can be more than one line. Two lines is the best length for this application you can use textoverflow to fix this ',
                            style: TextStyle(
                              color: Color(0xFF91979C),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                FontAwesomeIcons.clock,
                                color: Color(0xFF4937F4),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                '8:00am',
                                style: TextStyle(
                                  color: Color(0xFF4937F4),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Icon(
                                Icons.location_on,
                                color: Color(0xFF4937F4),
                              ),
                            ),
                            Text(
                              overflow: TextOverflow.ellipsis,
                              'Alamodome, San Antonio',
                              style: TextStyle(
                                  color: Color(0xFF4937F4),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
          ],
        ));
  }
}
