require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle[0,10]
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    raise
    url = "https://wagon-dictionary.herokuapp.com/'#{@word}'"
    score_serialized = open(url).read
    scores = JSON.parse(score_serialized)
  end
  if @word.include?@letters && scores["found"] == true
    return "#{scores["word"]} #{scores["length"]}"
  elsif @word == scores["found"] != true
    return "La Palabra no existe"
  elsif @word.does_not_include?@letter 
    return "La parabra no esta incluida"
  end 
end

