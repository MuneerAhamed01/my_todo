import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo/views/auth/utils/string_consts.dart';
import 'package:my_todo/views/widgets/custom_tab/cubit/tab_handler_cubit.dart';
import 'package:my_todo/views/widgets/custom_tab/custom_tab.dart';
import 'package:my_todo/views/widgets/textfield.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                StringConsts.loginSignUp,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                StringConsts.welcomeToTheTodo,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              const CustomLoginTabBar(),
              const SizedBox(height: 24),
              BlocBuilder<TabHandlerCubit, TabHandlerState>(
                builder: (ctx, state) {
                  return Column(
                    children: [
                      AppTextField(
                        hintText: state.selectedTab == 0
                            ? StringConsts.emailAddress
                            : StringConsts.password,
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
