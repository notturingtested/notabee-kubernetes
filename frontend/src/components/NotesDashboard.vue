<template>
  <v-container class="pt-5 mt-5">
    <div v-if="$apollo.loading">
      Loading...
    </div>
    <div v-else>
      <v-row>
        <template v-for="note in notes">
          <v-col
            :key="`note-${note.id}`"
            sm="3"
          >
            <Note
              :note="note"
            />
          </v-col>
        </template>
      </v-row>
    </div>
    <AddNote
      @note-saved="refetchNotes"
    />
  </v-container> 
</template>

<script>
import gql from 'graphql-tag'
import Note from './Note.vue'
import AddNote from './AddNote.vue'

export default {
  name: 'NotesDashboard',
  components: {
    AddNote,
    Note
  },
  apollo: {
    notes: gql`query {
            notes:getNotes {
                id
                title
                body
            }
        }`
  },
  data: () => ({
    notes: [] // this data object is automagically filled with the `notes` attributes from the apollo/graphql query above
  }),
  methods: {
    refetchNotes () {
      this.$apollo.queries.notes.refetch()
    }
  }
}
</script>

