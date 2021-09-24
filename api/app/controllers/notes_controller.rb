class NotesController < ApplicationController
  def get_notes
    render json: Note.all
  end

  def get_note
    note_id = params[:id]
    note = Note.where(id: note_id)

    if note.nil?
      render json: {}
    else
      render json: note
    end
  end
end
