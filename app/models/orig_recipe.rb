class Recipe
  attr_reader :id, :name, :category, :ingredients, :preparation
  attr_reader :cooking_time, :difficulty, :rating, :image_file, :comment, :source
  attr_accessor :serves

  def initialize(args)
    @id           = args[:id]
    @name         = args[:name]
    @category     = args[:category]
    @ingredients  = args[:ingredients]
    @preparation  = args[:preparation]
    @cooking_time = args[:cooking_time]
    @serves       = args[:serves]
    @difficulty   = args[:difficulty]
    @rating       = args[:rating]
    @image_file   = args[:image_file]
    @comment      = args[:comment]
    @source       = args[:source]
  end

  def to_s
    "ID: #{@id}, Name: #{@name}, Category: #{@category}, Ingredients: #{@ingredients}"
  end
end
