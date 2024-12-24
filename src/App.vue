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
  padding: 0;
  font-family: Arial, sans-serif;
}

.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  height: 100vh;
  width: 100%;
  padding: 20px;
  box-sizing: border-box;
  position: absolute;
  top: 0;
  left: 0;
}

.title {
  font-size: 1.5em;
  margin-bottom: 20px;
}

.form {
  display: flex;
  flex-direction: row;
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
  max-height: 200px;
  margin-top: 20px;
}
</style>
