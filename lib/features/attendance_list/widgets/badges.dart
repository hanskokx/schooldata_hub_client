import 'package:flutter/material.dart';

Widget missedTypeBadge(missedtype) {
  if (missedtype == 'missed') {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          color: Colors.orange[300],
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            "F",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  } else if (missedtype == 'late') {
    return Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
        color: Colors.yellow[300],
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text(
          "V",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  } else if (missedtype == 'none') {
    return Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text(
          "A",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  } else {
    return Container(
      width: 25.0,
      height: 25.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 135, 141, 243),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text(
          "H",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

Widget contactedBadge(contacted) {
  if (contacted == true) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          color: Colors.red[900],
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            "K",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  } else {
    return Container();
  }
}

Widget returnedBadge(returned) {
  if (returned == true) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          color: Colors.blue[600],
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            "H",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  } else {
    return Container();
  }
}

Widget excusedBadge(excused) {
  if (excused == true) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          color: Colors.red[900],
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            "U",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  } else {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: 25.0,
        height: 25.0,
        decoration: BoxDecoration(
          color: Colors.green[600],
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            "E",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
