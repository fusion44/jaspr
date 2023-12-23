import 'package:jaspr/jaspr.dart';

part 'counter.g.dart';

@client
class Counter extends StatefulComponent with _$Counter {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield p([
      text('Count: $count'),
    ]);

    yield button(
      events: {
        'click': (_) {
          print("clicked $count");
          setState(() => count++);
        }
      },
      [text('Increment')],
    );
  }
}
