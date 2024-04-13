import 'package:get/get.dart';
import 'package:tech_app/component/api_constant.dart';
import 'package:tech_app/models/article_model.dart';
import 'package:tech_app/models/podcast_model.dart';
import 'package:tech_app/models/poster_model.dart';
import 'package:tech_app/models/tags_model.dart';
import 'package:tech_app/services/dio_service.dart';

class HomeScreenController extends GetxController {
  late Rx<PosterModel> posterModel;
  RxList<ArticleModel> articleModel = RxList();
  RxList<PodcastModel> podCastModel = RxList();
  RxList<TagsModel> tagsModel = RxList();

  @override
  onInit() {
    super.onInit();
    getHomeItem();
  }

  getHomeItem() async {
    var response = await DioService().getMethod(ApiConstant.getHomeItems);
    if (response.statusCode == 200) {
      response.data['top_visited'].forEach((item) {
        articleModel.add(ArticleModel.fromJson(item));
      });

      response.data['top_podcasts'].forEach((item) {
        podCastModel.add(PodcastModel.fromJson(item));
      });
    }
  }
}
