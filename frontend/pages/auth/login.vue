<script setup>
const auth = useAuthStore();
definePageMeta({
  middleware: ["guest"]
})
const form = reactive({
    email: 'test@example.com',
    password: 'password',
})
const errors = ref([]);

const handleSubmit = async() => {
    try{
        await auth.login(form);
    }catch(error){
        errors.value = error.data.errors;
    }
}
</script>

<template>
    <div
        class="mx-auto w-full max-w-sm p-4 my-4 bg-white border border-gray-200 rounded-lg shadow sm:p-6 md:p-8 dark:bg-gray-800 dark:border-gray-700">
        <form class="space-y-6" @submit.prevent="handleSubmit">
            <h5 class="text-xl font-medium text-gray-900 dark:text-white text-center">Sign In</h5>
            <div>
                <FormLabel for="email">Email</FormLabel>
                <FormInput type="email" name="email" id="email" placeholder="name@gmail.com" v-model="form.email"/>
                <span v-if="errors.email" class="text-sm text-red-500">{{ errors.email[0] }}</span>
            </div>
            <div>
                <FormLabel for="password">Your Password</FormLabel>
                <FormInput type="password" name="password" id="password" placeholder="password" v-model="form.password"/>
                <span v-if="errors.password" class="text-sm text-red-500">{{ errors.password[0] }}</span>
            </div>
            <div class="flex items-start">
                <div class="flex items-start">
                    <div class="flex items-center h-5">
                        <input id="remember" type="checkbox" value=""
                            class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800"
                            >
                    </div>
                    <FormLabel for="remember" class="ml-2">Remember me</FormLabel>
                </div>
                <a href="#" class="ms-auto text-sm text-blue-700 hover:underline dark:text-blue-500">Lost Password?</a>
            </div>
            <ButtonPrimary>Login</ButtonPrimary>
            <div class="text-sm font-medium text-gray-500 dark:text-gray-300">
                Not registered? <a href="#" class="text-blue-700 hover:underline dark:text-blue-500">Create account</a>
            </div>

            <SocialLogin/>
        </form>
    </div>
</template>