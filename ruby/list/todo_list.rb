
class TodoList

	def initialize(tasks)
		@task_list = tasks
	end

	def get_items
		@task_list
	end

	def add_item(item)
		@task_list << item
	end

	def delete_item(item)
		@task_list.delete(item)
	end

	def get_item(index)
		@task_list[index]
	end

end