module API
  class PostsController < ApplicationController
    def index
      posts = Crypto.all
      render json: { posts: posts }
    end
  end
end
