class PagesController < ApplicationController
	def show
		@users = User.all.each do |user|
			user.username
		end
		@todos = Todo.all.each do |todo|
			todo.tasks
		end
		@cats = Cat.all.each do |cat|
			cat.name
		end
	end

	def create
		todo = Todo.new(tasks: params[:todo][:tasks])
		todo.save!
		redirect_to todos_path
	end

	def new
		@todo = Todo.new
	end
end