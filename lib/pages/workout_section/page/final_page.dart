import 'package:vortexapp1/pages/workout_section/widget/exercises_widget.dart';
import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            buildAppBar(context),
            ExercisesWidget(),
          ],
        ),
      );

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        //expandedHeight: MediaQuery.of(context).size.height * 1,
        stretch: true,
        title: Text('WorkOuts'),
        centerTitle: true,
        pinned: true,
        // leading: Icon(Icons.menu),
        // actions: [
        //   Icon(Icons.person, size: 28),
        //   SizedBox(width: 12),
        // ],
      );
}
