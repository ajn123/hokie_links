class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def create
    note = Note.new(note_params)
    if note.save
      redirect_to note_path(note)
    else
      flash[:danger] = note.errors.messages
      redirect_to :back
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    note =  Note.find(params[:id])
    unless note.update_attributes(note_params)
      flash[:danger] = note.errors.messages
      redirect_to :back
    else
      redirect_to action: :show
    end
  end


  private

  def note_params
    params.require(:note).permit(:title, :description, :course_id)
  end
end
