class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def create
    note = Note.new(note_params)
    if note.save
      redirect_to edit_course_path(note.course_id)
    end
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    Note.find(params[:id]).update_attributes(note_params)
    redirect_to action: :index
  end


  private

  def note_params
    params.require(:note).permit(:title, :description, :course_id)
  end
end
