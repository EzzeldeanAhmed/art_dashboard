import 'package:bloc/bloc.dart';
import 'package:dashboard/core/helper_functions/on_generate_route.dart';
import 'package:dashboard/core/services/custom_bloc_observer.dart';
import 'package:dashboard/core/services/get_it_service.dart';
import 'package:dashboard/features/dashboard/views/dashboard_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyAX0M76JgbDLTxFxcPJrm0ynLPmbb76qbc',
        appId: '1:161803360242:android:1f0d42fe6f08b2b03c7d6b',
        projectId: 'project-66490',
        messagingSenderId: ' '),
  );
  await Supabase.initialize(
    url: 'https://thyuemmcoaeuladmkayf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRoeXVlbW1jb2FldWxhZG1rYXlmIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczMzAxMDczOSwiZXhwIjoyMDQ4NTg2NzM5fQ.1z8vwvUNF7muYhFaJtJnE4E9LwnLNpCVSSSMdHS1RVU',
  );
  setupGetit();
  runApp(const MainApp());
}

final supabase = Supabase.instance.client;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: DashboardView.routeName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
