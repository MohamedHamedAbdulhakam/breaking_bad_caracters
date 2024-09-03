import 'package:breaking_bad_caracters/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BreakingBad(
    appRouter: AppRouter(),
  ));
}

class BreakingBad extends StatelessWidget {
  const BreakingBad({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
