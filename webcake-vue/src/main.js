import '@/assets/main.css'
import 'animate.css';


import router from './router'
import { createApp } from 'vue'
import App from './App.vue'

// 导入 Element Plus 图标
import * as ElementPlusIconsVue from '@element-plus/icons-vue'

const app = createApp(App);

// 应用路由
app.use(router)
app.mount('#app')

// 引入图标
for (const [key, component] of Object.entries(ElementPlusIconsVue)) {
    app.component(key, component)
}
