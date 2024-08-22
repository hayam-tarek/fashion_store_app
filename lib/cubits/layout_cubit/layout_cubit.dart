import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/helper/constant.dart';
import 'package:e_commerce_app/models/banner_model.dart';
import 'package:e_commerce_app/shared/services/api.dart';
import 'package:meta/meta.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  List<BannerModel> banners = [];

  void getBanners() async {
    emit(GetBannersLoading());
    try {
      var json = await API().get(
        url: '$kBaseURL/banners',
        headers: {},
      );
      if (json['status'] == true) {
        List<dynamic> data = json['data'];
        for (var item in data) {
          banners.add(BannerModel.fromJSON(json: item));
        }
        emit(GetBannersSuccess());
      } else {
        throw Exception(json['message']);
      }
    } on Exception catch (e) {
      log(e.toString());
      String message = e.toString().replaceFirst('Exception: ', '');
      emit(
        GetBannersFailure(
          message: message,
        ),
      );
    }
  }
}
