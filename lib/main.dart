import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'notable inventors',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _garret = 'https://en.wikipedia.org/wiki/Garrett_Morgan';
    return Scaffold(
      appBar: AppBar(
        title: Text("Notable Inventors"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch(_garret);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/garrettmorgan.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Garrett Morgan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an African-American inventor, businessman, and community leader. His most notable inventions were a three-position traffic signal and a smoke hood notably used in a 1916 tunnel construction disaster rescue.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch(
                          "https://en.wikipedia.org/wiki/George_Washington_Carver");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/georgewashingtoncarver.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "George Washington Carver",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an American agricultural scientist and inventor who promoted alternative crops to cotton and methods to prevent soil depletion. He was the most prominent black scientist of the early 20th century.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Nikola_Tesla");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/nikola-tesla.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Nikola Tesla",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was a Serbian-American inventor, electrical engineer, mechanical engineer, and futurist best known for his contributions to the design of the modern alternating current electricity supply system.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Patricia_Bath");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/patriciabath.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Patricia Bath",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "She was an American ophthalmologist, inventor, humanitarian, and academic. She was the inventor of laser cataract surgery. Her invention was called Laserphaco Probe.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch(
                          "https://en.wikipedia.org/wiki/Alexander_Graham_Bell");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/AlexanderGrahamBell.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Alexander Graham Bell",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was a Scottish-born inventor, scientist, and engineer who is credited with inventing and patenting the first practical telephone. He also co-founded the American Telephone and Telegraph Company in 1885.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Benjamin_Franklin");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/BenjaminFranklin.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Benjamin Franklin",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an American polymath active as a writer, scientist, inventor, statesman, diplomat, printer, publisher and political philosopher.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Eli_Whitney");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/EliWhitney.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Eli Whitney",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an American inventor, widely known for inventing the cotton gin, one of the key inventions of the Industrial Revolution that shaped the economy of the Antebellum South.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Guglielmo_Marconi");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/GuglielmoMarconi.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Guglielmo Marconi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an Italian inventor and electrical engineer, known for his pioneering work on long-distance radio transmission, development of Marconi's law, and a radio telegraph system.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Henry_Ford");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/HenryFord.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Henry Ford",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an American industrialist, business magnate, and founder of the Ford Motor Company, and chief developer of the assembly line technique of mass production.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch(
                          "https://en.wikipedia.org/wiki/Johannes_Gutenberg");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/JohannesGutenberg.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Johannes Gutenberg",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was a German inventor, printer, publisher, and goldsmith who introduced printing to Europe with his mechanical movable-type printing press. ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Steve_Jobs");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/SteveJobs.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Steve Jobs",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an American business magnate, industrial designer, investor, and media proprietor.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Thomas_Edison");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/ThomasEdison.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Thomas Edison",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an American inventor and businessman who has been described as America's greatest inventor. He developed many devices in fields",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      launch("https://en.wikipedia.org/wiki/Wright_brothers");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/Wrightbrothers.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 200,
                        ),
                        // Image.asset(
                        //   "assets/images/georgewashingtoncarver.jpeg",
                        //   fit: BoxFit.cover,
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.height / 4.6,
                        // ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 5.1,
                          //color: Colors.orange,
                          child: Column(
                            children: [
                              Text(
                                "Wright Brothers",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "They were two American aviation pioneers generally credited with inventing, building, and flying the world's first successful motor-operated airplane.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle()),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.orange),
                            //shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
