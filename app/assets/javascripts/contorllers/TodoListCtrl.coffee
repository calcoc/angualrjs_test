#コントローラーの定義
angular.module('sampleApp').controller "TodoListCtrl", ($scope) ->

# 初期データを用意するメソッド
  # $scope.list.name
  # $scope.list.todos
  $scope.init = ->
    $scope.list = {
      'name'  : 'Todoリスト1',
      'todos' : [
        { 'description' : 'todo description1','completed' : false},
        { 'description' : 'todo description2','completed' : false}
      ]
    }
    # todoを追加する
  $scope.addTodo = (todoDescription) ->
    # 新しいtodoを作成する
    todo = { 'description' : todoDescription,'completed' : false}

    # initメソッドで用意したtodosの一番最初にtodoを追加する
    $scope.list.todos.unshift(todo)

    # Todo入力テキストフィールドを空にする
    $scope.todoDescription = ""
   
    #削除
  $scope.deleteTodo = (todo)->
  
    $scope.list.todos.splice($scope.list.todos.indexOf(todo),1)
