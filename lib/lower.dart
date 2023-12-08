import 'package:flutter/material.dart';

class lower extends StatelessWidget {
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
                'Leg Exercises',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Workout Image
              Image.asset(
                height: 400,
                width: 500,
                "images/lower.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),

              // Workout Tips

              SizedBox(height: 15),
              Text(
                ' Location: \n'
                '\n'
                    'The muscles in the legs are some of the largest in the body. They include the quads and hamstrings, but also the hips, adductors, abductors and calves. And we cant talk working the legs without also mentioning the glutes, which are crucial for performing any movement of the hips and thighs.  \n'

                    'Each one of these muscles has different parts. Aptly named, the quadriceps are a group of four muscles that help to extend and stabilize the knee and are also vital to movements like jumping and running..\n'

                    ' Benifits: \n'
                '\n'
                    'Our legs are the foundation of the body. In addition to the core, improving strength and muscle mass in the lower body creates a stronger and sturdier base for the body.\n'
                    '\n'
                    'Which is important since we use our legs and glutes to perform every single movement during the day — standing up, sitting down, bending over, walking, even getting out of bed. That means that incorporating leg workouts into your routine is crucial for maintaining healthy movement in your daily life.\n'

                    'Example Exercises: \n '
                    'Front Squat\n'
                    'Bulgarian Split Squat\n'
                    'Romanian Deadlift\n'
                    'Barbell Squat\n',

                textAlign: TextAlign.left,
              ),
              Text(
                'Lower Body Strength Exercises',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Workout Image
              Image.asset(
                height: 400,
                width: 500,
                "images/lower2.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              SizedBox(height: 15),
              Text(
                  ' LOCATION: \n'
                      'Doing a regular lower body strength workout can help to shape your legs, hips, and butt by building lean muscle mass in those areas. Youll strengthen muscles in the quadriceps, hamstrings, glutes, and calves'
                      '\n'
                    'Having a fit, strong lower body also helps you to move through your day with greater ease. It can also improve your performance during athletic activities like running and cycling or team sports like soccer or football.'

                  '\n'
                      ' TIPS: \n'
                      'Be sure to use the right type of ball (as in a wall-ball version of a medicine ball) and to throw against a surface that can take a beating (no drywall!). Even though power training focuses on the explosive concentric phase, we cannot achieve this without eccentrically lengthening, or stretching, the muscles. The idea is to spend as little time as possible transitioning from the stretching phase back into an explosive concentric movement.\n'

                      'EXAMPLE EXCERCISES: \n '
                      'Weighted step up\n'
                      'Barbell jammer press\n'
                      'Deadlift\n'
                      'Hip thrust\n',


                // Workout Tips

                textAlign: TextAlign.left,
              ),

            ],

          ),

        ),
      ),
    );
  }
}