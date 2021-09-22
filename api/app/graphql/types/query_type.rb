module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :get_notes, resolver: Queries::GetNotes
    field :get_note, resolver: Queries::GetNote
  end
end
