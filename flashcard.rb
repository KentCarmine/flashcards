class FlashCard

  attr_reader :definition, :term, :attempts

  def initialize(params)
    @definition = params[:definition]
    @term = params[:term]
    @attempts = 0
  end



end
