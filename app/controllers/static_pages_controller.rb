class StaticPagesController < ApplicationController
  def home
  	@test=User.new
  end

  def help
  end

  def about
  end

  def contact
  end
end
