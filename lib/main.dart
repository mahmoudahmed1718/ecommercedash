import 'package:bloc/bloc.dart';
import 'package:ecommercedash/core/helper_functions/on_generate_route.dart';
import 'package:ecommercedash/core/services/custom_bloc_observer.dart';
import 'package:ecommercedash/core/services/get_it_service.dart';
import 'package:ecommercedash/core/services/supabase_storage_service.dart';
import 'package:ecommercedash/features/splash/splash/presentation/views/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  Bloc.observer = CustomBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  // ✅ 1. Load environment variables
  await dotenv.load();

  // ✅ 2. Now safe to use .env values
  await SupabaseStorageService.initSupabase();

  // ✅ 3. Initialize Firebase
  await Firebase.initializeApp();

  // ✅ 4. Setup Dependency Injection
  setupGetIt();

  // ✅ 5. Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
