# frozen_string_literal: true

# Source: https://github.com/rails/rails/blob/7-1-stable/railties/lib/rails/generators/rails/scaffold_controller/templates/controller.rb.tt
class TracksController < ApplicationController
  before_action :set_track, only: %i[show edit update destroy]

  # GET /tracks
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  def show; end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit; end

  # POST /tracks
  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to @track, notice: "Track was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tracks/1
  def update
    if @track.update(track_params)
      redirect_to @track, notice: "Track was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /tracks/1
  def destroy
    @track.destroy!
    redirect_to tracks_url, notice: "Track was successfully destroyed.", status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_track
    @track = Track.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def track_params
    params.require(:track).permit(:name)
  end
end
