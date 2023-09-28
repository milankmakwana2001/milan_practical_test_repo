import 'package:cloudrevels_practical_test_milan/application/details_screen/detail_data/detail_data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreenBody extends StatefulWidget {
  const DetailScreenBody({super.key});

  @override
  State<DetailScreenBody> createState() => _DetailScreenBodyState();
}

class _DetailScreenBodyState extends State<DetailScreenBody> {
  late DetailDataBloc _detailDataBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _detailDataBloc = BlocProvider.of<DetailDataBloc>(context);
  }

  @override
  void dispose() {
    _detailDataBloc.add(const DetailDataEvent.emitInitial());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailDataBloc, DetailDataState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state.isError
                ? const Center(
                    child: Text("Error"),
                  )
                : ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Image.network(
                        state.detailData?.blog?.photoUrl ?? "",
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Text(
                        state.detailData?.blog?.title ?? "",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),),
                      Center(
                        child: Text(
                          state.detailData?.blog?.description ?? "",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          state.detailData?.blog?.category ?? "",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  );
      },
    );
  }
}
