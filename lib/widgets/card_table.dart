import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.calculate,
            title: 'titulo',
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.notification_important,
            title: 'titulo',
          ),
          // _SingleCard()
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.purple,
            icon: Icons.notification_important,
            title: 'titulo',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.speed,
            title: 'Ruuun',
          ),
          // _SingleCard()
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: _CustomButtom(color: color, icon: icon, title: title));
  }
}

class _CustomButtom extends StatelessWidget {
  const _CustomButtom({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    stops: const [0.2, 1],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topLeft,
                    colors: [color, Colors.white]),
                shape: BoxShape.circle),
            child: Icon(
              icon,
              color: Colors.white,
              size: 36,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text(title,
            style: TextStyle(
              color: color,
            ))
      ],
    );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
