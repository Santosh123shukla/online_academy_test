# app/controllers/tests_controller.rb

class TestsController < ApplicationController
  def index
    @subjects = Question.distinct.pluck(:subject)
  end

  def create
    subjects = params[:subjects]
    selected_questions = Question.where(subject: subjects).order('RANDOM()').limit(5)
    @questions = selected_questions.shuffle
    render 'create'
  end
end
