import 'package:brazil_burger_client/pages/delayed.pages.dart';
import 'package:flutter/material.dart';

class BurgerList extends StatefulWidget {
  const BurgerList({Key? key}) : super(key: key);

  @override
  State<BurgerList> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DelayedAnimation(
            delay: 1200,
            child: SliverToBoxAdapter(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Card(
                        child: Text("Burger au Boeuf",
                          style: TextStyle(fontSize: 250),
                        ),
                      )
                    ],);
                  },
              ),
              ),
            ),
      ],
    );
  }
}
