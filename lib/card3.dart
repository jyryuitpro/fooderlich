import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.book,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(height: 8,),
                    Text('Recipe Trends', style: FooderlichTheme.darkTextTheme.headline2,),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    Chip(
                      label: Text('Healthy', style: FooderlichTheme.darkTextTheme.bodyText1,),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      },
                    ),
                    Chip(
                      label: Text('Vegan', style: FooderlichTheme.darkTextTheme.bodyText1,),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      },
                    ),
                    Chip(
                      label: Text('Carrots', style: FooderlichTheme.darkTextTheme.bodyText1,),
                      backgroundColor: Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Greens', style: FooderlichTheme.darkTextTheme.bodyText1,),
                      backgroundColor: Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Wheat', style: FooderlichTheme.darkTextTheme.bodyText1,),
                      backgroundColor: Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Pescetarian', style: FooderlichTheme.darkTextTheme.bodyText1,),
                      backgroundColor: Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Mint', style: FooderlichTheme.darkTextTheme.bodyText1,),
                      backgroundColor: Colors.black.withOpacity(0.7),
                    ),
                    Chip(
                      label: Text('Lemongrass', style: FooderlichTheme.darkTextTheme.bodyText1,),
                      backgroundColor: Colors.black.withOpacity(0.7),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
