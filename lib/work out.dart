import 'package:flutter/material.dart';
class beginners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Plan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [

              // Workout Image
              Image.asset(
                'images/beg.jpg',
                height: 300,
                width: 500,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),

              // Workout Tips
              Text(
                'Workout Tips:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1. Warm-up before starting your workout.\n'
                    '2. Stay hydrated during the session.\n'
                    '3. Focus on proper form and technique.\n'
                    '4. Listen to your body and take breaks if needed.\n'
                    '5. Cool down and stretch after the workout.'
                    '6. Also pair the routine with cardio exvercises.\n',
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 16),
              Text(''
                  '',)

            ],
          ),
        ),
      ),
    );
  }
}
class regular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Plan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [

            // Workout Image
            Image.asset(
              height: 400,
              width: 500,
              "images/re.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),

            // Workout Tips
            Text(
              'Workout Tips:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. Warm-up before starting your workout.\n'
                  '2. Stay hydrated during the session.\n'
                  '3. Focus on proper form and technique.\n'
                  '4. Listen to your body and take breaks if needed.\n'
                  '5. Cool down and stretch after the workout.'
                  '6. Also pair the routine with cardio exvercises.\n',
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 16),
            Text(''
                '',)

          ],
        ),
      ),
    );
  }
}
