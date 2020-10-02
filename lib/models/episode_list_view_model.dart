
import 'package:app/routing/routing_constants.dart';
import 'package:app/services/navigation_service.dart';
import 'package:flutter/cupertino.dart';

import '../locator.dart';

class EpisodeListViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToEpisode(int index) {
    _navigationService
        .navigateTo(EpisodeDetailsRoute, queryParams: {'id': index.toString()});
  }
}