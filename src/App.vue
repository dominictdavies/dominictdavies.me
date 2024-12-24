<script setup lang="ts">
import { ref } from 'vue'

const inputText = ref('')
const handleSubmit = () => {
  // Handle the form submission logic here
  console.log('Submitted:', inputText.value)
}
</script>

<template>
  <div class="container">
    <h1 class="title">Your Title Here</h1>
    <form @submit.prevent="handleSubmit" class="form">
      <input v-model="inputText" type="text" placeholder="Enter text" class="input" />
      <button type="submit" class="button">Submit</button>
    </form>
    <img src="@/assets/logo.svg" alt="Paper Shredder" class="image" />
  </div>
</template>

<style scoped>
html, body {
  height: 100%;
  margin: 0;
}

.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  height: 100%;
  width: 100%;
}

.title {
  font-size: 2em;
  margin-bottom: 20px;
}

.form {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 20px;
}

.input {
  padding: 10px;
  font-size: 1em;
  margin-right: 10px;
  width: 200px;
}

.button {
  padding: 10px 20px;
  font-size: 1em;
  cursor: pointer;
}

.image {
  max-width: 100%;
  height: auto;
  margin-top: 20px;
}
</style>
