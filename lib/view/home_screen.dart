import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod_mvvm/view/sub_screen.dart';
import '../view_model/home_screen_view_model.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("1");
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      floatingActionButton:
      FloatingActionButton(child: Text("ToSub"), onPressed: () => moveSubScreen(context)),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final _homeScreenState = ref.watch(homeScreenProvider);
                return Text(_homeScreenState.count.toString(), style: TextStyle(fontSize: 50.0),);
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
        ),
      ),
    );
  }

  moveSubScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => SubScreen()));
  }

  addOne(WidgetRef ref) {
    final _homeScreenNotifier = ref.watch(homeScreenProvider.notifier);
    _homeScreenNotifier.addOne();
  }

  clear(WidgetRef ref) {
    final _homeScreenNotifier = ref.watch(homeScreenProvider.notifier);
    _homeScreenNotifier.clear();
  }
}
