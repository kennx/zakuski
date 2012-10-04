class NodesController < ApplicationController	
	def index
		@selected_node = Node.first
		@custom_search_engines = @selected_node.custom_search_engines
		@topics = @selected_node.topics
		render 'layout'
	end

	def show
		@selected_node = Node.find(params[:node_id])
		@custom_search_engines = @selected_node.custom_search_engines
		@topics = @selected_node.topics
		render 'layout'
	end
end
