import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo/utils/colors.dart';
import 'package:my_todo/views/auth/utils/string_consts.dart';
import 'package:my_todo/views/widgets/custom_tab/cubit/tab_handler_cubit.dart';

class CustomLoginTabBar extends StatelessWidget {
  const CustomLoginTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabHandlerCubit, TabHandlerState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  context.read<TabHandlerCubit>().setTab(0);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: state.selectedTab == 0
                        ? MyColors.violet
                        : Theme.of(context).colorScheme.onSecondaryContainer,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  height: 48,
                  child: Center(
                    child: Text(
                      StringConsts.emailAddress,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: state.selectedTab == 0
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  context.read<TabHandlerCubit>().setTab(1);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 48,
                  decoration: BoxDecoration(
                    color: state.selectedTab == 1
                        ? MyColors.violet
                        : Theme.of(context).colorScheme.onSecondaryContainer,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      StringConsts.mobileNoText,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: state.selectedTab == 1
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
