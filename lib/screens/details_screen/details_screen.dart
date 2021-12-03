import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details_component/details_component.dart';

class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // color:  Colors.red,
      body: ListView(
        physics: BouncingScrollPhysics(),
        primary: true,
        shrinkWrap: true,
        children: [
          buildDetailsProjectCard(context),
        ],
      ),
    );
  }
}


