<script setup lang="ts">
defineProps<{
  h1Text: string
  h3Text: string
}>()
</script>

<template>
  <div class="greetings">
    <h1 class="primary" v-text='h1Text'/>
    <h3 v-text='h3Text'/>
  </div>
</template>

<style scoped>
.greetings h1,
.greetings h3 {
  text-align: center;
}

@media (min-width: 1024px) {
  .greetings h1,
  .greetings h3 {
    text-align: left;
  }
}
</style>
