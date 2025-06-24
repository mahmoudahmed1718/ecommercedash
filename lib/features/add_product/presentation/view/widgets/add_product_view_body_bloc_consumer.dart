import 'package:ecommercedash/core/widgets/snak_bar.dart';
import 'package:ecommercedash/features/add_product/presentation/manger/add_product/add_product_cubit.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/add_product_view_body.dart';
import 'package:ecommercedash/features/add_product/presentation/view/widgets/custom_modal_progress_hud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductViewBodyBlocConsumer extends StatelessWidget {
  const AddProductViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          snackBarMethod(context, 'Product added successfully ');
        } else if (state is AddProductFailure) {
          snackBarMethod(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is AddProductLoading ? true : false,
          child: AddProductViewBody(),
        );
      },
    );
  }
}
