import 'package:flutter/material.dart';

class arm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ARM MUSCLE ANATOMY REVIEW'),
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
                'BICEPS BRACHII',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Workout Image
              Image.asset(
                height: 400,
                width: 500,
                "images/branchii.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),

              // Workout Tips

              SizedBox(height: 15),
              Text(
                ' Location: \n'
                    'The biceps brachii (or biceps for short) are located on the anterior (front) part of your upper arm between your elbow and shoulder. Your biceps contain two different “heads” or muscle bellies; a short head, and a long head— each with different attachment sites.\n'

                    ' Function: \n'
                    'Your biceps accelerate elbow flexion (bending your arm at the elbow), supination (moving from a palm down to palm up position) and assist with shoulder flexion (raising your arm in front of your body).\n'

                    'Example Exercises: \n '
                    'Dumbbell/barbell biceps curls, hammer curls, preacher curls\n',

                textAlign: TextAlign.left,
              ),
              Text(
                'BICEPS BRACHII',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Workout Image
              Image.asset(
                height: 400,
                width: 500,
                "images/branchii.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
          SizedBox(height: 15),
          Text(
            ' LOCATION: \n'
                'The biceps brachii (or biceps for short) are located on the anterior (front) part of your upper arm between your elbow and shoulder. Your biceps contain two different “heads” or muscle bellies; a short head, and a long head— each with different attachment sites.\n'

                ' FUNCTION: \n'
                'Your biceps accelerate elbow flexion (bending your arm at the elbow), supination (moving from a palm down to palm up position) and assist with shoulder flexion (raising your arm in front of your body).\n'

                'EXAMPLE EXCERCISES: \n '
                'Dumbbell/barbell biceps curls, hammer curls, preacher curls\n',


            // Workout Tips

                textAlign: TextAlign.left,
              ),



              Text(
                'TRICEPS BRACHII',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Workout Image
              Image.asset(
                height: 400,
                width: 500,
                "images/tri.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),

              // Workout Tips

              SizedBox(height: 15),
              Text(
                ' Location: \n'
                    'The triceps brachii (or triceps for short) are located on the posterior (back) part of your upper arm between your elbow and shoulder. Your triceps contains three different “heads”; a short head, a medial head, and a long head— each with different attachment sites.\n'
                    ' Function: \n'
                     'Your triceps accelerate elbow extension (straightening your arm at the elbow) and shoulder extension (moving your arm toward your backside— the exact opposite of shoulder flexion).\n'

                    'Example Exercises: \n '
                    'Triceps pushdowns, narrow-grip bench press, narrow-grip push-up, triceps kickbacks, supine triceps extensions (skull crushers). \n',

                textAlign: TextAlign.left,
              ),
              Text(
                'BICEPS BRACHII',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Workout Image
              Image.asset(
                height: 400,
                width: 500,
                "images/branchii.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              SizedBox(height: 15),
              Text(
                ' Location: \n'
                    'The biceps brachii (or biceps for short) are located on the anterior (front) part of your upper arm between your elbow and shoulder. Your biceps contain two different “heads” or muscle bellies; a short head, and a long head— each with different attachment sites.\n'

                    ' Function: \n'
                    'Your biceps accelerate elbow flexion (bending your arm at the elbow), supination (moving from a palm down to palm up position) and assist with shoulder flexion (raising your arm in front of your body).\n'

                    'Example Exercises: \n '
                    'Dumbbell/barbell biceps curls, hammer curls, preacher curls\n',


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
