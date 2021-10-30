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
    int fontS = 30;
    const _garret = 'https://en.wikipedia.org/wiki/Garrett_Morgan';
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(Icons.info_outline),
                          ),
                          Text('About'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Icon(Icons.remove_circle_outline),
                          ),
                          Text('Remove Ads'),
                        ],
                      ),
                    ),
                  ])
        ],
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                                  "They were two American aviation pioneers generally credited with inventing, building, and flying the world's firsts successful motor-operated airplanes.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                      launch("https://en.wikipedia.org/wiki/Stephanie_Kwolek");
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
                              image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FStephanie-Kwolek.jpeg?alt=media&token=96ddb277-e660-4a59-b4dd-bee2dbb06dee",
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
                                "Stephanie Kwolek",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "She was an American chemist who is known for inventing Kevlar. Her career at the DuPont company spanned more than 40 years.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                      launch("https://en.wikipedia.org/wiki/Steve_Wozniak");
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
                              image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FSteve-Wozniak.jpeg?alt=media&token=38841b2a-78d4-45b7-b56e-699cd12bee2b",
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
                                "Steve-Wozniak.",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He is an American electronics engineer, computer programmer, philanthropist, and technology entrepreneur.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                      launch("https://en.wikipedia.org/wiki/Leonardo_da_Vinci");
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
                              image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FLeonardo-da-Vinci.jpeg?alt=media&token=8581ace5-9e1f-49b5-9574-ba4871e2ef18",
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
                                "Leonardo-da-Vinci",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an Italian polymath of the High Renaissance who was active as a painter, draughtsman, engineer, scientist, theorist, sculptor and architect.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                      launch("https://en.wikipedia.org/wiki/Samuel_Morse");
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
                              image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FSamuel_Morse.jpeg?alt=media&token=fa79ae5f-8fa1-401f-92c6-3704864967e9",
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
                                "Samuel Morse",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                  "He was an American inventor and painter. After having established his reputation as a portrait painter, in his middle age Morse contributed to the invention of a single-wire telegraph system.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width / fontS)),
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
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FSir_Tim_Berners-Lee.jpeg?alt=media&token=67666641-abe6-4403-9396-a589f0c7d7cb',
                  url: 'https://en.wikipedia.org/wiki/Tim_Berners-Lee',
                  text:
                      'He is an English computer scientist best known as the inventor of the World Wide Web. He is a Professorial Fellow of Computer Science at the University of Oxford',
                  title: 'Tim Berners-Lee',
                ),
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FArchimedes.jpeg?alt=media&token=51ed97b9-c3b8-43ef-afa0-1c0ad9c5cc35',
                  url: 'https://en.wikipedia.org/wiki/Archimedes',
                  text:
                      'He was a Greek mathematician, physicist, engineer, astronomer, and inventor. He is regarded as one of the leading scientists in classical antiquity.',
                  title: 'Archimedes',
                ),
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FElijah_McCoy.jpeg?alt=media&token=c23b7935-036c-4188-963a-7399f58f1865',
                  url: 'https://en.wikipedia.org/wiki/Elijah_McCoy',
                  text:
                      'He was a Canadian-born inventor and engineer of African American descent who was notable for his 57 US patents, most having to do with the lubrication of steam engines.',
                  title: 'Elijah McCoy',
                ),
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FMaragarat%20E.%20Knight.jpeg?alt=media&token=94592f50-df57-4375-9c73-1dd4e90ba1db',
                  url: 'https://en.wikipedia.org/wiki/Margaret_E._Knight',
                  text:
                      'She was an American inventor, notably of a machine to produce flat-bottomed paper bags. She has been called "the most famous 19th-century woman inventor".',
                  title: 'Margaret E. Knight',
                ),
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FJohn%20Logie%20Baird.jpeg?alt=media&token=5dfb96d1-9c7e-44d6-bdc6-201071d9200b',
                  url: 'https://en.wikipedia.org/wiki/John_Logie_Baird',
                  text:
                      'He was a Scottish inventor, electrical engineer, and innovator who demonstrated his working television system on 26 January 1926.',
                  title: 'John Logie Baird',
                ),
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FHedy_Lamarr.jpeg?alt=media&token=d8c9b2bf-55a2-4a25-8e40-6134a46418c1',
                  url: 'https://en.wikipedia.org/wiki/Hedy_Lamarr',
                  text:
                      'She was an Austrian-born American actress, inventor, and film producer. She appeared in 30 films over a 28-year career in Europe and the United States.',
                  title: 'Hedy Lamarr',
                ),
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FCharles_Babbage.jpeg?alt=media&token=d3c45e6e-54ea-4fdc-a06f-5961e6719115',
                  url: 'https://en.wikipedia.org/wiki/Charles_Babbage',
                  text:
                      'He was an English polymath. A mathematician, philosopher, inventor and mechanical engineer, Babbage originated the concept of a digital programmable computer.',
                  title: 'Charles Babbage',
                ),
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FRobert%20Fulton.jpeg?alt=media&token=9edbaea2-0274-46d3-8ae4-38c2d8b88cf5',
                  url: 'https://en.wikipedia.org/wiki/Robert_Fulton',
                  text:
                      'He was an American engineer and inventor who is widely credited with developing the worlds first commercially successful steamboat, the North River Steamboat.',
                  title: 'Robert Fulton',
                ),
                NotableInventors(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/notable-inventors.appspot.com/o/notableInventorsPics%2FLewis%20Howard%20Latimer.jpeg?alt=media&token=cc0c2f51-ea78-47b1-8f98-d3ada49c63c4',
                  url: 'https://en.wikipedia.org/wiki/Lewis_Howard_Latimer',
                  text:
                      'He was a Black American inventor and patent draftsman. His inventions included an evaporative air conditioner, an improved process for manufacturing carbon filaments for light bulbs.',
                  title: 'Lewis Howard Latimer',
                ),
                NotableInventors(
                  imageUrl: 'https://www.onthisday.com/images/people/clarence-birdseye-200.jpg',
                  url: 'https://en.wikipedia.org/wiki/Clarence_Birdseye',
                  text: 'He was an American inventor, entrepreneur, and naturalist, considered the founder of the modern frozen food industry.',
                  title: 'Clarence Birdseye',
                ),
                NotableInventors(
                  imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Woodsgr.jpg',
                  url: 'https://en.wikipedia.org/wiki/Granville_Woods',
                  text: 'He was an inventor who held more than 60 patents in the U.S. He was the first African American mechanical and electrical engineer after the Civil War.',
                  title: 'Granville Woods',
                ),
                NotableInventors(imageUrl: 'https://www.thoughtco.com/thmb/sJNe1Jry-33e0gyDCczrYdztHPI=/3317x3317/smart/filters:no_upscale()/GettyImages-703637529-58efda4a5f9b582c4d5cf35f.jpg'
                , url: 'https://www.thoughtco.com/thmb/sJNe1Jry-33e0gyDCczrYdztHPI=/3317x3317/smart/filters:no_upscale()/GettyImages-703637529-58efda4a5f9b582c4d5cf35f.jpg',
                  text: 'He was an Italian physicist, chemist, and pioneer of electricity and power who is credited as the inventor of the electric battery and the discoverer of methane.',
                  title: 'Alessandro Giuseppe Antonio Anastasio Volta',),
                NotableInventors(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/39/GodfreyKneller-IsaacNewton-1689.jpg',
                  url: 'https://en.wikipedia.org/wiki/Isaac_Newton',
                  text: 'He was an English mathematician, astronomer, and author who is widely recognised as one of the greatest mathematicians and most influential scientists of all time.',
                  title: 'Sir Isaac Newton PRS',),
                NotableInventors(imageUrl: 'https://cdn.britannica.com/17/5017-050-F174B601/James-Watt-oil-painting-H-Howard-National.jpg',
                  url: 'https://en.wikipedia.org/wiki/James_Watt',
                  text: 'He was a Scottish inventor, mechanical engineer, and chemist who improved on Thomas Newcomens 1712 Newcomen steam engine with his Watt steam engine in 1776',
                  title: 'James Watt',),
                NotableInventors(imageUrl: 'https://img.bleacherreport.net/img/images/photos/003/556/188/hi-res-4dc6f60803a0db710a9f15106b231128_crop_north.jpg?1450193036&w=3072&h=2048',
                  url: 'https://en.wikipedia.org/wiki/James_Naismith',
                  text: 'He was as a Canadian-American physical educator, physician, Christian chaplain, sports coach, and inventor of the game of basketball.',
                  title: 'James Naismith',),
                NotableInventors(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/07/Alfred_Nobel3.jpg',
                  url: 'https://en.wikipedia.org/wiki/Alfred_Nobel',
                  text: 'He was a Swedish chemist, engineer, inventor, businessman, and philanthropist. He is best known for having bequeathed his fortune to establish the Nobel Prize.',
                  title: 'Alfred Noble',),
                NotableInventors(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Rudolf_Diesel2.jpg',
                  url: 'https://en.wikipedia.org/wiki/Rudolf_Diesel',
                  text: 'He was a German inventor and mechanical engineer who is famous for having invented the Diesel engine.',
                  title: 'Rudolf Diesel',),
                NotableInventors(imageUrl: 'https://media.wired.com/photos/592718a57034dc5f91beda18/master/pass/Buckminster_Fuller-BE043654.jpg',
                  url: 'https://en.wikipedia.org/wiki/Buckminster_Fuller',
                  text: 'He was an American architect, systems theorist, author, designer, inventor, and futurist.',
                  title: 'Buckminster Fuller',),
                NotableInventors(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Anthonie_van_Leeuwenhoek_%281632-1723%29._Natuurkundige_te_Delft_Rijksmuseum_SK-A-957.jpeg',
                  url: 'https://en.wikipedia.org/wiki/Antonie_van_Leeuwenhoek',
                  text: 'He was a Dutch businessman and scientist in the Golden Age of Dutch science and technology. He is widely known as the father of Microbiology',
                  title: 'Antonie van Leeuwenhoek',),
                NotableInventors(imageUrl: 'https://i.pinimg.com/600x315/39/b4/a9/39b4a9f8dd8e2c8ce2a45731371747c9.jpg',
                  url: 'https://en.wikipedia.org/wiki/Montgolfier_brothers',
                  text: 'Joseph-Michel Montgolfier and Jacques-Étienne Montgolfier, were aviation pioneers, balloonists and paper manufacturers from the commune Annonay in France.',
                  title: 'Montgolfier brothers',),
                NotableInventors(imageUrl: '',
                  url: '',
                  text: '',
                  title: '',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotableInventors extends StatelessWidget {
  const NotableInventors({
    Key key,
    @required this.url,
    @required this.imageUrl,
    @required this.title,
    @required this.text,
  }) : super(key: key);
  final String url;
  final String imageUrl;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GestureDetector(
        onTap: () {
          launch(url);
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
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 200,
            ),
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
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: MediaQuery.of(context).size.width / 30)),
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
    );
  }
}
