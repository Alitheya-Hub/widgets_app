import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'Button_Screen';
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated')),
            ElevatedButton(onPressed: null, child: Text('Elevated')),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.abc_rounded),
              label: Text('Vaya que exigente'),
            ),

            FilledButton(onPressed: () {}, child: Text('FilledButton')),
            FilledButton.icon(
              onPressed: () {},
              label: Text('FilledButton icon'),
              icon: Icon(Icons.add_home_rounded),
            ),

            OutlinedButton(onPressed: () {}, child: Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.zoom_in),
              label: Text('Outlined icon'),
            ),

            CustomButton(),

            IconButton(onPressed: () {}, icon: Icon(Icons.church_rounded)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.church_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override 
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      color: colors.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text('Hola Numdo', style: TextStyle(color: Colors.white))),
    );
  }
}
