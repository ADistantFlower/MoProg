import 'package:flutter/material.dart';
import 'package:project/cardio.dart';
import 'package:project/core.dart';
import 'package:project/lower.dart';
import 'arm.dart';
import 'work out.dart';
import 'login.dart';
import 'core.dart';
import 'custom.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADF',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Text('ADF'),

      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Your a pp logo or image
            Image.asset(
              'images/far.jpg', // replace with your image path
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            // App title
            const Text(
              'ADF',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // App tagline or description
            const Text(
              'our future will be bright.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            // Call-to-action button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}


void home() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'century'),
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,

        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[


              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white30,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Start your',
                      style: TextStyle(color: Colors.black87, fontSize: 40,fontWeight: FontWeight.bold),

                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Work out plan',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const TextField(
                        decoration:  InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search",
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0,vertical: 20.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Selection',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                       Container(

                         height: 200,
                         color: Colors.white,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            ElevatedButton(child: WorkoutCard('images/dart.jpg'),
                                onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (cl) => arm() ));
                            }, style:ElevatedButton.styleFrom( backgroundColor: Colors.white) ,),

                            ElevatedButton(child: WorkoutCard('images/dars.jpg'),onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (cl) => core()));
                            } , style:ElevatedButton.styleFrom( backgroundColor: Colors.white) , ),

                            ElevatedButton(child: WorkoutCard('images/darts.png'),onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (cl) => lower()));
                            } , style:ElevatedButton.styleFrom( backgroundColor: Colors.white) , ),
                            ElevatedButton(child: WorkoutCard('images/da.jpg'),onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (cl) => protein()));
                              } , style:ElevatedButton.styleFrom( backgroundColor: Colors.white) , ),
                          ],
                        ),
                      ),

                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/dat.jpg')),

                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                stops: const [
                                  0.3,
                                  0.9
                                ],
                                colors: [
                                  Colors.blueAccent.withOpacity(.8),
                                  Colors.blueAccent.withOpacity(.2)
                                ]),
                          ),
                          child: const Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:  EdgeInsets.all(15.0),
                              child: Text(
                                'For Beginners',
                                style:
                                TextStyle(color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                    beginners()));
                          }
                    ),

                    Container(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/das.jpg')),

                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                stops: const [
                                  0.3,
                                  0.9
                                ],
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.2)
                                ]),
                          ),
                          child: const Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:  EdgeInsets.all(15.0),
                              child: Text(
                                'For Regulars',
                                style:
                                TextStyle(color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                                  regular()));
                        }

                    ),
                    Container(
                      height: 10,
                    ),
                    InkWell(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/cus.jpg')),

                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  stops: const [
                                    0.3,
                                    0.9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.2)
                                  ]),
                            ),
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding:  EdgeInsets.all(15.0),
                                child: Text(
                                  'Costumize your work out',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                                  custom()));
                        }

                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }



  Widget WorkoutCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}

