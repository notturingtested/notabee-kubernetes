<template>
  <v-app>
    <v-app-bar
      app
      dark
    >
      <div class="d-flex align-center">
        <v-icon large>
          mdi-beehive-outline
        </v-icon>
        <h1 class="ml-5">
          Notabee
        </h1>
      </div>

      <v-spacer />

      <v-btn
        href="https://github.com/vuetifyjs/vuetify/releases/latest"
        target="_blank"
        text
      >
        <span class="mr-2">Latest Release</span>
        <v-icon>mdi-open-in-new</v-icon>
      </v-btn>
    </v-app-bar>

    <v-main>
      <NotesDashboard />
    </v-main>
  </v-app>
</template>

<script>
import NotesDashboard from './components/NotesDashboard.vue'
export default {
  name: 'App',

  components: {
    NotesDashboard,
  },

  data: () => ({
    //
  }),
}
</script>
