class CakesController < ApplicationController
  def index
    recipe = params[:recipe].present? ? parse_input(params[:recipe]) : {}
    ingredients = params[:ingredients].present? ? parse_input(params[:ingredients]) : {}
    @cakes = cakes(recipe, ingredients)
  end

  private

  def cakes(recipe, ingredients)
    max_cakes = nil

    recipe.each do |ingredient, amount_required|
      if amount_required > 0
        available_amount = ingredients.fetch(ingredient, 0)
        cakes_possible = available_amount / amount_required
        max_cakes = max_cakes.nil? ? cakes_possible : [max_cakes, cakes_possible].min
      end
    end

    max_cakes.nil? ? 0 : max_cakes.floor
  end

  def parse_input(input)
    input.gsub!(/[\{\}]/, '')
    input.split(',').map { |pair| pair.split(':').map(&:strip) }.to_h.symbolize_keys.transform_values(&:to_i)
  end
end
