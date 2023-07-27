require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ('A'..'Z').to_a.sample
    end
    # return @letters unless @letters.any? { |i| %w[A E I O U].include?(i) }

    # @letters.pop
    # @letters << %w[A E I O U].sample
    unless @letters.any? { |i| %w[A E I O U].include?(i) }
      @letters.pop
      @letters << %w[A E I O U].sample
    end
  end

  def score
  end
end
