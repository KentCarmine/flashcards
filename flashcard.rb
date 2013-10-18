
class FlashCard

  attr_reader :definition, :term

  def initialize(params)
    @definition = params[:definition]
    @term = params[:term]
  end



end
