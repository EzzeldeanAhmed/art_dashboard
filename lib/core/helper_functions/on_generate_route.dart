import 'package:dashboard/features/add_artwork/presentation/views/add_artwork_view.dart';
import 'package:dashboard/features/dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboardView());

    case AddArtworkView.routeName:
      return MaterialPageRoute(builder: (context) => const AddArtworkView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
