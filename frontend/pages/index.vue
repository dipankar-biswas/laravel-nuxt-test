<template>
    <div class="page-wrapper bg-gray-50">
        <div class="slider-wrap">
            <div class="mx-auto w-full max-w-screen-2xl px-4 py-6 lg:py-8">
                <div class="flex gap-x-4">
                    <div class="left basis-9/12">
                        
    
                        <img src="/assets/images/slider/slider-1.webp" class="max-w-full rounded-lg" alt="...">
    
                    </div>
                    <div class="right basis-3/12">
                        <div class="flex flex-col gap-y-4">
                            <div class="image">
                                <img src="assets/images/slider/slider-4.webp" alt="Slide Title" class="w-full rounded">
                            </div>
                            <div class="image">
                                <img src="assets/images/slider/slider-5.webp" alt="Slide Title" class="w-full rounded">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="services mx-auto w-full max-w-screen-2xl p-4 py-3 lg:py-8">
            <div class="bg-white py-6 rounded grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-4 gap-x-3 gap-y-5">
                <div class="service flex items-center gap-x-3 px-2">
                    <div class="image w-1/4">
                        <img src="assets/images/service/site-feature-1.webp" alt="Service Title" class="max-w-100">
                    </div>
                    <div class="content w-3/4">
                        <h4 class="text-lg font-semibold">Rapid shipping</h4>
                        <p class="mb-0">With a short period of time</p>
                    </div>
                </div>
                <div class="service flex items-center gap-x-3 px-2">
                    <div class="image w-1/4">
                        <img src="assets/images/service/site-feature-2.webp" alt="Service Title" class="max-w-100">
                    </div>
                    <div class="content w-3/4">
                        <h4 class="text-lg font-semibold">Secure transaction</h4>
                        <p class="mb-0">Checkout securely</p>
                    </div>
                </div>
                <div class="service flex items-center gap-x-3 px-2">
                    <div class="image w-1/4">
                        <img src="assets/images/service/site-feature-3.webp" alt="Service Title" class="max-w-100">
                    </div>
                    <div class="content w-3/4">
                        <h4 class="text-lg font-semibold">24/7 support</h4>
                        <p class="mb-0">Ready to pickup calls</p>
                    </div>
                </div>
                <div class="service flex items-center gap-x-3 px-2">
                    <div class="image w-1/4">
                        <img src="assets/images/service/site-feature-4.webp" alt="Service Title" class="max-w-100">
                    </div>
                    <div class="content w-3/4">
                        <h4 class="text-lg font-semibold">Bundle offer</h4>
                        <p class="mb-0">On many products</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="new-year-sale py-4 mx-auto w-full max-w-screen-2xl p-4 py-3 lg:py-8">
            <div class="bg-white">
                <div class="title flex items-center gap-3 px-3 py-3 border-b-2">
                    <h4 class="text-xl font-semibold">New Year Sale</h4>
                    <h5>53:12:11:59</h5>
                </div>
                <div class="products grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-x-3 gap-y-5">
                    <ProductItem></ProductItem>
            
                </div>
            </div>
        </div>
    
        <div class="mx-auto w-full max-w-screen-2xl p-4 py-3 lg:py-8">
            <div class="bg-white">
                <div class="title flex items-center gap-3 px-3 py-3 border-b-2">
                    <h4 class="text-xl font-semibold">Daily discover</h4>
                </div>
                <div class="products grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-x-3 gap-y-5">
                    
                </div>
            </div>
        </div>
    </div>
</template>