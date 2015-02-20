class PagesController < ApplicationController
	before_action :authenticate_user!
  def index
  	test = Test.first
  	@questions = test.questions
  end

  def new
  	puts params
  end

  def create 
  	answers = params[:question]
  	answers.each do |key, value|
  		Question.find(key).answers.build(:value => value, :user_id => User.first.id).save!
  	end
  	redirect_to root_path
  end

end
