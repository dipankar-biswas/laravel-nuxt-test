<script setup>
const auth = useAuthStore();
definePageMeta({
  middleware: ["guest"]
})
const form = reactive({
    name: null,
    email: null,
    password: null,
    password_confirmation: null,
})
const errors = ref([]);

const handleSubmit = async() => {
    try{
        await auth.register(form);
    }catch(error){
        errors.value = error.data.errors;
    }
}
</script>

<template>
    <div
        class="mx-auto w-full max-w-sm p-4 my-4 bg-white border border-gray-200 rounded-lg shadow sm:p-6 md:p-8 dark:bg-gray-800 dark:border-gray-700">
        <form class="space-y-6" @submit.prevent="handleSubmit">
            <h5 class="text-xl font-medium text-gray-900 dark:text-white text-center">Registation</h5>
            <div>
                <FormLabel for="name">Name</FormLabel>
                <FormInput type="name" name="name" id="name" placeholder="Your name" v-model="form.name"/>
                <span v-if="errors.name" class="text-sm text-red-500">{{ errors.name[0] }}</span>
            </div>
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
            <div>
                <FormLabel for="password_confirmation">Confirm Password</FormLabel>
                <FormInput type="password" name="password_confirmation" id="password_confirmation" placeholder="password_confirmation" v-model="form.password_confirmation"/>
                <span v-if="errors.password_confirmation" class="text-sm text-red-500">{{ errors.password_confirmation[0] }}</span>
            </div>
            <ButtonPrimary>Register</ButtonPrimary>
            <div class="text-sm font-medium text-gray-500 dark:text-gray-300">
                Not registered? <a href="#" class="text-blue-700 hover:underline dark:text-blue-500">Create account</a>
            </div>

            <SocialLogin/>
        </form>
    </div>
</template>