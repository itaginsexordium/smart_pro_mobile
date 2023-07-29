import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<MultiBlocProvider> serviceBuild(
    FutureOr<Widget> Function() builder) async {
  return MultiBlocProvider(
    providers: const [
      
    ],
    child: await builder(),
  );
}
