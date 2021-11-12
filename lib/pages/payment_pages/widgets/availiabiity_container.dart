import 'package:flutter/material.dart';

class CheckAvailiabilityContainer extends StatelessWidget {
  const CheckAvailiabilityContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336.0,
      height: 127.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
          bottomRight: Radius.circular(50.0),
          bottomLeft: Radius.circular(0.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
          bottomRight: Radius.circular(50.0),
          bottomLeft: Radius.circular(0.0),
        ),
        child: Container(
          color: const Color.fromARGB(255, 255, 209, 0),
        ),
      ),
    );
  }
}
