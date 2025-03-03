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
  link: '/cards', 
  subTitle: 'Un contenedor estilizado', 
  icon: Icons.credit_card),


MenuItem(
  title: 'ProgressIndicators', 
  link: '/progress', 
  subTitle: 'Generales y controlados', 
  icon: Icons.refresh_rounded),
  

  MenuItem(
  title: 'Snackbars y diálogos', 
  link: '/snackbars', 
  subTitle: 'Indicadores en pantalla', 
  icon: Icons.info_outline),

  MenuItem(
  title: 'Animated container', 
  link: '/animated', 
  subTitle: 'Stateful widgets animado', 
  icon: Icons.check_box_outline_blank),

  MenuItem(
  title: 'UI Controls + Tiles', 
  link: '/ui-controls', 
  subTitle: 'UNa serie de controles de flutter', 
  icon: Icons.car_rental_outlined),

  MenuItem(
  title: 'Tutorial de la APP', 
  link: '/tutorial', 
  subTitle: 'Pequeño tutorial intorductorio', 
  icon: Icons.car_rental_outlined),

  MenuItem(
  title: 'InifniteScroll y Pull', 
  link: '/infinite', 
  subTitle: 'Scroll infinito más pull', 
  icon: Icons.list_alt_rounded),

];
