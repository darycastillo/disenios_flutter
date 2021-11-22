import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //imagen
        const Image(
          image: AssetImage('assets/img1.jpeg'),
        ),
        //title widget
        const _Title(),
        //Button section
        const _CreateButtonSection(),
        //Parrafo
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
            "Fugiat commodo nostrud elit enim culpa consequat deserunt incididunt ex duis pariatur quis ipsum. Sint qui incididunt ad magna. In deserunt minim tempor voluptate magna anim velit eu elit ex irure magna. Sint aliquip consectetur irure minim ut duis occaecat ullamco enim sit fugiat mollit do sint. Est tempor qui nostrud magna laborum elit nostrud sit. Adipisicing non ullamco culpa nostrud Lorem anim aliqua proident ullamco pariatur enim sit adipisicing.",
            textAlign: TextAlign.justify,
          ),
        ),
      ]),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kardengets, Switzerlad',
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class _CreateButtonSection extends StatelessWidget {
  const _CreateButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _CustomButton(
            icon: Icons.call,
            text: 'CALL',
          ),
          _CustomButton(
            icon: Icons.send,
            text: 'Route',
          ),
          _CustomButton(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const _CustomButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            icon,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
        Text(text)
      ],
    );
  }
}
