import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[

MenuItem(
  title: 'Botones', 
  link: '/buttons', 
  subTitle: 'Varios botones en Flutter', 
  icon: Icons.smart_button_outlined),

MenuItem(
  title: 'Tarjetas', 
  link: '/card', 
  subTitle: 'Un contenedor estilizado', 
  icon: Icons.credit_card)

];
