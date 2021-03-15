class FlashcardSetsController < ApplicationController
  before_action :set_flashcard_set, only: [:show, :update, :destroy]

  # GET /flashcard_sets
  def index
    @flashcard_sets = FlashcardSet.all

    render json: @flashcard_sets
  end

  # GET /flashcard_sets/1
  def show
    render json: @flashcard_set
  end

  # POST /flashcard_sets
  def create
    @flashcard_set = FlashcardSet.new(flashcard_set_params)

    if @flashcard_set.save
      render json: @flashcard_set, status: :created, location: @flashcard_set
    else
      render json: @flashcard_set.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flashcard_sets/1
  def update
    if @flashcard_set.update(flashcard_set_params)
      render json: @flashcard_set
    else
      render json: @flashcard_set.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flashcard_sets/1
  def destroy
    @flashcard_set.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flashcard_set
      @flashcard_set = FlashcardSet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flashcard_set_params
      params.require(:flashcard_set).permit(:title)
    end
end
