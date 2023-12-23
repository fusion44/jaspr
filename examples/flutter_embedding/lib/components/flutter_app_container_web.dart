import 'package:flutter_riverpod/flutter_riverpod.dart' as fr;
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../widgets/app.dart';
import 'flutter_target.dart';
import 'ripple_loader.dart';

class FlutterAppContainer extends StatelessComponent {
  const FlutterAppContainer({Key? key}) : super(key: key);

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield FlutterTarget(
      loader: RippleLoader(),
      app: fr.ProviderScope(
        parent: ProviderScope.containerOf(context),
        child: MyApp(),
      ),
    );
  }
}
