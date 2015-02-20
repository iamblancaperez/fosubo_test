class Question < ActiveRecord::Base
	belongs_to :test
	has_many :answers

	def average_for_question
		return self.answers.select("value").inject(0) {|sum, i| sum+=i.value.to_i } / self.answers.count
	end

	def num_answers
		return self.answers.count
	end
end
