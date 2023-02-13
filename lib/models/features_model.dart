
import 'package:flutter/material.dart';

class Features {
  String icon ;
  String title;
  String descreption;
  Features({
    required this.icon,
    required this.title,
    required this.descreption,
  });
}

List<Features> features = [
  Features(icon: 'assets/icons/speed_icon.png', title: 'TOP SPEED', descreption: '220'),
  Features(icon: 'assets/icons/wifi_icon.png', title: 'WIFI', descreption: 'Avalible'),
  Features(icon: 'assets/icons/seats_icon.png', title: 'SEATS', descreption: '4'),
  Features(icon: 'assets/icons/sensors_icon.png', title: 'SENSOR', descreption: 'Avalible'),
  Features(icon: 'assets/icons/bluetooth_icon.png', title: 'BLUTOOTH', descreption: '4.0'),
  Features(icon: 'assets/icons/doors_icon.png', title: 'DOORS', descreption: '4'),
];
