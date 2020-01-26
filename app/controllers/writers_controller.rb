class WritersController < ApplicationController
  before_action :set_writer, only: [:show, :edit, :update, :destroy]

  def index
    @writers = Writer.all
  end

  def show
      @writer = Writer.find(params[:id])
  end

  def new
    @writer = Writer.new
  end

  def edit
  end

  def create
    @writer = Writer.new(writer_params)

    respond_to do |format|
      if @writer.save
        format.html { redirect_to @writer, notice: 'Writer was successfully created.' }
        format.json { render :show, status: :created, location: @writer }
      else
        format.html { render :new }
        format.json { render json: @writer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @writer.update(writer_params)
        format.html { redirect_to @writer, notice: 'Writer was successfully updated.' }
        format.json { render :show, status: :ok, location: @writer }
      else
        format.html { render :edit }
        format.json { render json: @writer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @writer.destroy
    respond_to do |format|
      format.html { redirect_to writers_url, notice: 'Writer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_writer
      @writer = Writer.find(params[:id])
    end

    def writer_params
      params.require(:writer).permit(:name, :expertise, :experience)
    end
end
