#コントローラーの定義
angular.module('sampleApp').controller "TodoListCtrl", ($scope) ->

# 初期データを用意するメソッド
  # $scope.list.name
  # $scope.list.todos
  $scope.init = ->
    $scope.list = {
      'name'  : 'Todoリスト1',
      'todos' : [
        { 'description' : 'todo description1'},
        { 'description' : 'todo description2'}
      ]
    }