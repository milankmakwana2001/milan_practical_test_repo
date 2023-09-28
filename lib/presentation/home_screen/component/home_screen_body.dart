import 'package:cloudrevels_practical_test_milan/application/details_screen/detail_data/detail_data_bloc.dart';
import 'package:cloudrevels_practical_test_milan/application/home_screen/home_data/home_data_bloc.dart';
import 'package:cloudrevels_practical_test_milan/presentation/details_screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/app_colors.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<HomeDataBloc>().add(const HomeDataEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDataBloc, HomeDataState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.isError
                ? const Center(
                    child: Text("Error"),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 10,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          context.read<DetailDataBloc>().add(DetailDataEvent.started(id: state.homeData?.blogs?[index].id ?? 0));
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DetailScreen(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                            bottom: 5,
                          ),
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.homeItemColor,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  state.homeData?.blogs?[index].photoUrl ?? "",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildText(
                                    title: state.homeData?.blogs?[index].title ?? "",
                                    isLarge: true,
                                  ),
                                  _buildText(
                                    title: state.homeData?.blogs?[index].category ?? "",
                                    isLarge: true,
                                  ),
                                  _buildText(
                                    title: state.homeData?.blogs?[index].description ?? "",
                                    isLarge: true,
                                  ),
                                  _buildText(
                                    title: state.homeData?.blogs?[index].id.toString() ?? "",
                                    isLarge: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: state.homeData?.blogs?.length ?? 0,
                  );
      },
    );
  }
}

Widget _buildText({
  required String title,
  required bool isLarge,
}) {
  return LimitedBox(
    maxWidth: 150,
    child: Text(
      title,
      style: TextStyle(
        fontWeight: isLarge ? FontWeight.w700 : FontWeight.w400,
        fontSize: isLarge ? 20 : 16,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ),
  );
}
