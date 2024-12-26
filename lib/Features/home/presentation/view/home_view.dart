import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/Core/utils/styles.dart';
import 'package:task/Features/home/presentation/manager/home_view/states.dart';
import 'package:task/Features/home/presentation/view/widgets/card_item.dart';
import '../manager/home_view/cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          centerTitle: true,
          title: Text(
            "محفوظات",
            style: styles.getCairoTextStyle18().copyWith(color: Colors.black),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: BlocProvider(
          create: (context) => ItemCubit()..fetchItems(),
          child: BlocBuilder<ItemCubit, ItemState>(
            builder: (context, state) {
              if (state is ItemInitial) {
                return Center(child: CircularProgressIndicator());
              } else if (state is ItemLoaded) {
                return ListView.builder(
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    final item = state.items[index];
                    return CardItem(
                      item: item,
                    );
                  },
                );
              } else {
                return Center(child: Text("Error loading items"));
              }
            },
          ),
        ),
      ),
    );
  }
}
