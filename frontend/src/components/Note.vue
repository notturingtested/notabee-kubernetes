<template>
  <v-card
    height="300"
    class="grey darken-3"
    dark
  >
    <v-card-title>
      {{ note.title }}
    </v-card-title>
    <v-card-subtitle>
      Created at:
    </v-card-subtitle>
    <v-card-text height="300">
      {{ note.body }}
    </v-card-text>
    <v-card-actions>
      <v-btn
        text
        outlined
        color="error"
        @click="deleteNote"
      >
        Delete
      </v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  name: 'Note',
  props: {
    note: {
      type: Object,
      required: true
    }
  },
  methods: {
    deleteNote () {
      alert("Not implemented yet!")
      // this.$axios.delete(...)
      // then find a way to refresh the notes data (like we do after adding a note)
    }
  }
}
</script>

