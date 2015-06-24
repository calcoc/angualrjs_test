class TodoList < ActiveRecord::Base
	#降順に新しいものから 関連したモデルを全て捨てる
	has_many :todos, -> { order "created_at DESC" }, dependent: :destroy
	#検証
  	validates :name, presence: true
end
