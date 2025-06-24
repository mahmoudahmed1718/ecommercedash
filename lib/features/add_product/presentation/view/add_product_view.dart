import 'package:ecommercedash/core/repo/image_repo/image_repo.dart';
import 'package:ecommercedash/core/repo/product_repo/product_repo.dart';
import 'package:ecommercedash/core/services/get_it_service.dart';
import 'package:ecommercedash/features/add_product/presentation/manger/add_product/add_product_cubit.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/add_product_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const String routeName = 'add-product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Add Product')),

      body: BlocProvider(
        create: (context) =>
            AddProductCubit(getIt<ProductRepo>(), getIt<ImageRepo>()),
        child: AddProductViewBodyBlocConsumer(),
      ),
    );
  }
}
