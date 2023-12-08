import 'package:flutter/material.dart';

class core extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CORE MUSCLE ANATOMY REVIEW'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [

              Text(
                'THE BEST CORE STRENGTH EXERCISES',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Workout Image
              Image.asset(
                height: 400,
                width: 500,
                "images/core.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),

              // Workout Tips

              SizedBox(height: 15),
              Text(
                ' Location: \n'
                    'Core strength exercises require movement of the spine through relatively large ranges of motion and integrate the full muscle-action spectrum (eccentric, isometric and concentric muscle actions). These movements include flexion, extension, lateral flexion, rotation and a combination of those joint actions.\n'

                    ' Function: \n'
                    'These core-focused exercises can also integrate resistance through the use of bands, cables, medicine balls and free weights. A twist can be added, too, as in cable and medicine ball rotations and back extensions.\n'

                    'Example Exercises: \n '
                    'Crunches\n'
                    'back extension\n'
                    'side bends\n'
                    'trunk rotations\n',

                textAlign: TextAlign.left,
              ),
              Text(
                'CORE POWER EXERCISES',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Workout Image
              Image.asset(
                height: 400,
                width: 500,
                "images/core2.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              SizedBox(height: 15),
              Text(
                ' LOCATION: \n'
                    'Core power exercises utilize little to no resistance and focus on the movement’s rate of force production (speed). For most clients and trainers, these exercises are fun, because they usually involve throwing things! Here are some examples, which are typically done with a medicine ball\n'

                    ' TIPS: \n'
                    'Be sure to use the right type of ball (as in a wall-ball version of a medicine ball) and to throw against a surface that can take a beating (no drywall!). Even though power training focuses on the explosive concentric phase, we cannot achieve this without eccentrically lengthening, or stretching, the muscles. The idea is to spend as little time as possible transitioning from the stretching phase back into an explosive concentric movement.\n'

                    'EXAMPLE EXCERCISES: \n '
                    'rotation chest pass\n'
                    'overhead crunch throw\n'
                    'soccer throw\n'
                     ' medicine ball slam\n',


                // Workout Tips

                textAlign: TextAlign.left,
              ),
               ],
             ),
           ),
      )
    );
    }
  }


class DetailPage extends StatelessWidget {
  final int itemIndex;

  DetailPage({required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Details for Item $itemIndex'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
