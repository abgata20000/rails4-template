###
# 共通設定
###
@Common = angular.module("Common", ['ngResource','ngSanitize', 'ui.router', 'ui.select2'])
# 共通で利用する設定情報
@Common.factory 'Common', ->
  data =
    api: ''
# APIへPOSTする際にJSON形式ではなくFormdata形式で送信する
@Common.config ($httpProvider) ->
  $httpProvider.defaults.transformRequest = (data = {}) ->
    $.param(data);
  $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8'

  @
