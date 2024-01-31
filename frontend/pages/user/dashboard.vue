<script setup>
const auth = useAuthStore();

definePageMeta({
  middleware: ["auth"]
})
</script>
<template>
    <div class="mx-auto w-full max-w-screen-xl p-4 py-6 lg:py-8">
        <div class="p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
            <h1 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Dashboard Page</h1>
            <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Welcome to Dashboard Page</p>
            <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Name: <strong>{{ auth.getUser?.name }}</strong></p>
            <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">email: <strong>{{ auth.getUser?.email }}</strong></p>
        </div>
    </div>
</template>