import 'package:ecommercedash/core/repo/image_repo/image_repo.dart';
import 'package:ecommercedash/core/repo/image_repo/image_repo_impl.dart';
import 'package:ecommercedash/core/repo/product_repo/product_repo.dart';
import 'package:ecommercedash/core/repo/product_repo/product_repo_impl.dart';
import 'package:ecommercedash/core/services/database_service.dart';
import 'package:ecommercedash/core/services/firestore_service.dart';
import 'package:ecommercedash/core/services/storage_service.dart';
import 'package:ecommercedash/core/services/supabase_storage_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageService>(SupabaseStorageService());
  getIt.registerSingleton<DatabaseService>(FirestoreService());
  getIt.registerSingleton<ImageRepo>(
    ImageRepoImpl(storageService: getIt<StorageService>()),
  );
  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(databaseService: getIt<DatabaseService>()),
  );
}
