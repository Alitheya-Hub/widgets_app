import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'UiControls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI CONTROLS')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool whatsBreakfast = false;
  bool whatsLunch = false;
  bool whatsDinner = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: Text('Developer mode'),
          subtitle: Text('Controles Adicionales'),
          value: isDeveloper,
          onChanged:
              (value) => setState(() {
                isDeveloper = !isDeveloper;
              }),
        ),

        ExpansionTile(
          title: Text('Vehículos de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: Text('By car'),
              subtitle: Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.car;
                  }),
            ),

            RadioListTile(
              title: Text('By boat'),
              subtitle: Text('Viajar por bote'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.boat;
                  }),
            ),

            RadioListTile(
              title: Text('By plane'),
              subtitle: Text('Viajar por avión'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.plane;
                  }),
            ),

            RadioListTile(
              title: Text('By submarine'),
              subtitle: Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.submarine;
                  }),
            ),
          ],
        ),

        CheckboxListTile(
          title: Text('Breaksfast?'),
          value: whatsBreakfast,
          onChanged: (value) => setState(() {
            whatsBreakfast = !whatsBreakfast;
          }),),
        
        CheckboxListTile(
          title: Text('Lunch?'),
          value: whatsLunch,
          onChanged: (value) => setState(() {
            whatsLunch = !whatsLunch;
          }),),

        CheckboxListTile(
          title: Text('Dinner?'),
          value: whatsDinner,
          onChanged: (value) => setState(() {
            whatsDinner = !whatsDinner;
          }),),
      ],
    );
  }
}
