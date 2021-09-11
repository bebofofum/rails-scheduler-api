class StreamsController < ApplicationController
  before_action :set_stream, only: [:show, :update, :destroy]

  # GET /streams
  def index
    @streams = Stream.all

    render json: @streams
  end

  # GET /streams/1
  def show
    # render json: @stream
    render json: StreamSerializer.new(@stream)
  end

  # POST /streams
  def create
    @stream = current_user.streams.build(stream_params)

    if @stream.save
      render json: @stream, status: :created, location: @stream
    else
      render json: @stream.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /streams/1
  def update
    if @stream.update(stream_params)
      render json: @stream
    else
      render json: @stream.errors, status: :unprocessable_entity
    end
  end

  # DELETE /streams/1
  def destroy
    @stream.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stream
      @stream = Stream.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stream_params
      params.require(:stream).permit(:name, :description, :schedule, :schedule_dates, :schedule_time, :stream_graphic)
    end
end
