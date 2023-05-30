import 'package:flutter/material.dart';

class RecentCard extends StatelessWidget {
  const RecentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: const Color.fromRGBO(251, 243, 223, 1),
          child: Row(
            children: [
              Image.asset(
                'assets/images/dounat.png',
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Donuts Share Box',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const SizedBox(
                      width: 150,
                      child: Text(
                        'Share box 4 pieces of donuts with different toppings (louts, chocolate ans sugar glace)',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: 2,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(183, 98, 29, 1),
                        fixedSize: const Size(150, 30)),
                    child: const Text('Add To Card '),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text(
                    '120 E',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromRGBO(183, 98, 29, 1)),
                  ),
                  SizedBox(height: 30,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
