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

  def create_note
    note = Note.new(title: params[:note_title], body: params[:note_body])
    if note.save
      render json: note, status: :created
    else
      render json: {}, status: :bad_request
    end
  end
end
