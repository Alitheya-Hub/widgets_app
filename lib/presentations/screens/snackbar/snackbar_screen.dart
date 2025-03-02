import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackBar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackback = SnackBar(
      content: Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false, //obliga al usuario a clickar sobre una de las "actions", debe aceptar o cancelar
      builder: (context) => AlertDialog(
        title: Text('¿Estás seguro?'),
        content: Text('Eu ullamco et sunt occaecat cupidatat et duis laborum culpa aliquip ea sint cupidatat ea. Irure esse dolore aliqua nostrud aute ut aliquip quis labore. Dolor eiusmod voluptate est ea laborum. Cillum occaecat nulla cupidatat aute anim cillum duis elit culpa nulla eu non.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar'))
        ],
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars y diálogos JP')),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.remove_red_eye_outlined),
        label: Text('Mostrar snackbar'),
        onPressed: () => showCustomSnackbar(context),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'AuId sunt pariatur Lorem ut reprehenderit culpa cupidatat nulla labore duis nostrud commodo nisi et. Culpa tempor cillum Lorem eiusmod est amet deserunt laboris ex. Deserunt minim aliquip adipisicing voluptate.',
                    ),
                  ],
                );
              },
              child: Text('Licencias usadas'),
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar diálogo de pantalla'),

            ),
          ],
        ),
      ),
    );
  }
}
