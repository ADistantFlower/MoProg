import 'package:flutter/material.dart';



class custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Plan Scheduler'),
      ),
      body: WorkoutScheduler(),
    );
  }
}

class Workout {
  String day;
  String exercise;

  Workout(this.day, this.exercise);
}

class WorkoutScheduler extends StatefulWidget {
  @override
  _WorkoutSchedulerState createState() => _WorkoutSchedulerState();
}

class _WorkoutSchedulerState extends State<WorkoutScheduler> {
  TextEditingController dayController = TextEditingController();
  TextEditingController exerciseController = TextEditingController();
  List<Workout> workoutPlan = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: dayController,
            decoration: InputDecoration(labelText: 'Enter workout day'),
          ),
          TextField(
            controller: exerciseController,
            decoration: InputDecoration(labelText: 'Enter workout exercise'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _scheduleWorkout();
            },
            child: Text('Schedule Workout'),
          ),
          SizedBox(height: 20),
          Text(
            'Workout Plan:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          _buildWorkoutList(),
        ],
      ),
    );
  }

  void _scheduleWorkout() {
    String day = dayController.text;
    String exercise = exerciseController.text;

    if (day.isNotEmpty && exercise.isNotEmpty) {
      Workout newWorkout = Workout(day, exercise);
      setState(() {
        workoutPlan.add(newWorkout);
      });

      // Clear input fields after scheduling a workout
      dayController.clear();
      exerciseController.clear();
    }
  }

  Widget _buildWorkoutList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: workoutPlan.map((workout) {
        return Text('${workout.day}: ${workout.exercise}');
      }).toList(),
    );
  }
}
