import 'package:fake_store/features/home/presentation/view/widgets/custom_grid_view_item.dart';
import 'package:fake_store/features/home/presentation/view_model/product_cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if(state is ProductSuccess) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
                itemCount: state.products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  return  CustomGridViewItem(productModel: state.products[index],);
                }),
          );
        } else if(state is ProductFailure){
          return const Center(child: Text("Something went wrong"));
        }else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
