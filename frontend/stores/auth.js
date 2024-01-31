export const useAuthStore = defineStore('auth', {
    state: () => ({ 
        user: {}, 
    }),
    persist: {
        paths: ["user"],
    },
    getters: {
        getUser: (state) => state.user,
    },
    actions: {
        async login(formData) {
            try{
                const {data} = await $fetch('http://localhost:8000/api/login', {
                    method: 'POST',
                    body: {...formData}
                });

                this.commonSeller(data);
            }catch(error){
                throw error;
            }
        },


        async register(formData) {
            try{
                const {data} = await $fetch('http://localhost:8000/api/register', {
                    method: 'POST',
                    body: {...formData}
                });

                this.commonSeller(data);
            }catch(error){
                throw error;
            }
        },

        commonSeller(data){
            const token = useTokenStore();
            token.setToken(data.token);
            this.user = data.user;
            return navigateTo('/user/dashboard');
        },
        
        
        async logout() {
            const token = useTokenStore();
            try{
                const res = await $fetch('http://localhost:8000/api/logout', {
                    method: 'POST',
                    headers: {
                        Accept: "application/json",
                        Authorization: `Bearer ${token.getToken}`,
                    },
                });

                token.removeToken();
            }catch(error){
                throw error;
            }
        },
    },
})