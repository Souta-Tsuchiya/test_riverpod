import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod_mvvm/view/home_screen.dart';
import 'package:test_riverpod_mvvm/view_model/sub_screen_view_model.dart';

class SubScreen extends ConsumerWidget {
  const SubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("1");
    return Scaffold(
      appBar: AppBar(
        title: Text("SubScreen"),
      ),
      floatingActionButton:
      FloatingActionButton(child: Text("Home"), onPressed: () => moveHomeScreen(context)),
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final _subScreenState = ref.watch(subScreenProvider);
                  return Text(_subScreenState.count.toString(), style: TextStyle(fontSize: 50.0),);
                }),
                ElevatedButton(
                  child: Text("＋"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                  onPressed: () => addOne(ref),
                ),
                ElevatedButton(
                    onPressed: () => clear(ref),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                    child: Text(
                      "クリアー",
                      style: TextStyle(fontSize: 20.0),
                    ))
              ],
            ),
          )),
    );
  }

  moveHomeScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
  }

  addOne(WidgetRef ref) {
    final _subScreenNotifier = ref.watch(subScreenProvider.notifier);
    _subScreenNotifier.addOne();
  }

  clear(WidgetRef ref) {
    final _subScreenNotifier = ref.watch(subScreenProvider.notifier);
    _subScreenNotifier.clear();
  }
}
