<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NovaCart | Premium E‑Commerce Experience</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #fefdf8;
            font-family: 'Inter', sans-serif;
            color: #18181b;
            scroll-behavior: smooth;
        }

        /* modern glass morphism & gradients */
        :root {
            --bg: #fefdf8;
            --surface: rgba(255, 255, 255, 0.92);
            --primary-dark: #0b1e33;
            --primary-deep: #13294b;
            --accent-glow: #ff6b4a;
            --accent-soft: #fe5f3e;
            --gold: #ffb347;
            --shadow-sm: 0 12px 28px -8px rgba(0, 0, 0, 0.06), 0 2px 4px rgba(0, 0, 0, 0.02);
            --shadow-lg: 0 25px 40px -12px rgba(0, 0, 0, 0.12);
            --radius-xl: 28px;
            --radius-md: 20px;
            --radius-sm: 14px;
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* header modern */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 253, 248, 0.92);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.04);
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
        }

        .brand-logo {
            display: flex;
            align-items: baseline;
            gap: 4px;
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 26px;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #1e2f4b, #ff6b4a);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .brand-logo span {
            background: none;
            color: #ff6b4a;
            -webkit-background-clip: unset;
        }

        /* modern search */
        .search-wrapper {
            background: white;
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 8px 18px;
            border-radius: 60px;
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0,0,0,0.04);
            width: 280px;
            transition: var(--transition);
        }
        .search-wrapper:focus-within {
            border-color: #ff6b4a;
            box-shadow: 0 0 0 3px rgba(255,107,74,0.2);
        }
        .search-wrapper input {
            border: none;
            background: transparent;
            width: 100%;
            font-size: 0.9rem;
            outline: none;
            font-weight: 400;
        }

        .nav-links {
            display: flex;
            gap: 26px;
            align-items: center;
        }
        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: #2d3e5f;
            transition: var(--transition);
            font-size: 0.95rem;
        }
        .nav-links a:hover { color: #ff6b4a; }

        .cart-icon {
            position: relative;
            background: #fff;
            padding: 8px 12px;
            border-radius: 40px;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
        }
        .cart-count-badge {
            position: absolute;
            top: -6px;
            right: -6px;
            background: #ff6b4a;
            color: white;
            font-size: 12px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 28px;
            cursor: pointer;
        }

        /* hero section — bold */
        .hero-modern {
            background: radial-gradient(circle at 80% 20%, #fff2e6, #fef5e9);
            border-radius: 0 0 48px 48px;
            padding: 56px 0 70px;
            margin-bottom: 20px;
        }
        .hero-grid {
            display: flex;
            align-items: center;
            gap: 40px;
            flex-wrap: wrap;
        }
        .hero-text h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 56px;
            font-weight: 700;
            line-height: 1.2;
            background: linear-gradient(to right, #13294b, #ff5e3a);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .hero-text p {
            font-size: 18px;
            margin: 20px 0 28px;
            color: #3b4b62;
        }
        .btn-group {
            display: flex;
            gap: 16px;
        }
        .btn-primary-glow {
            background: #ff6b4a;
            border: none;
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 700;
            color: white;
            font-size: 16px;
            box-shadow: 0 8px 18px rgba(255,107,74,0.3);
            transition: transform 0.2s, box-shadow 0.2s;
            cursor: pointer;
        }
        .btn-primary-glow:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 28px rgba(255,107,74,0.4);
        }
        .btn-outline-light {
            background: transparent;
            border: 1.5px solid #ff6b4a;
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 600;
            color: #ff6b4a;
            transition: all 0.2s;
            cursor: pointer;
        }

        /* category cards modern */
        .section-title {
            font-size: 34px;
            font-weight: 700;
            font-family: 'Space Grotesk';
            margin-bottom: 8px;
        }
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 24px;
            margin: 48px 0;
        }
        .cat-card-modern {
            background: white;
            backdrop-filter: blur(2px);
            border-radius: 36px;
            padding: 26px 12px;
            text-align: center;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0,0,0,0.02);
            cursor: pointer;
        }
        .cat-card-modern:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            border-color: #ffd9ce;
        }
        .cat-icon {
            font-size: 42px;
            background: linear-gradient(145deg, #ff6b4a, #ffa06e);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        /* product grid premium */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
            margin: 48px 0;
        }
        .product-card {
            background: #ffffff;
            border-radius: 28px;
            overflow: hidden;
            transition: var(--transition);
            box-shadow: 0 12px 24px -12px rgba(0, 0, 0, 0.08);
            border: 1px solid #f0ede8;
        }
        .product-card:hover {
            transform: scale(1.02);
            box-shadow: 0 30px 40px -20px rgba(0, 0, 0, 0.18);
        }
        .product-img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.4s;
        }
        .product-card:hover .product-img {
            transform: scale(1.02);
        }
        .product-info {
            padding: 20px 18px 22px;
        }
        .price-tag {
            font-weight: 800;
            font-size: 24px;
            color: #1f2e45;
        }
        .old-price {
            font-size: 14px;
            color: #8a8a8e;
            text-decoration: line-through;
            margin-left: 8px;
        }
        .rating-stars {
            color: #ffb347;
            letter-spacing: 2px;
        }
        .add-to-cart-btn {
            width: 100%;
            background: #13294b;
            border: none;
            color: white;
            padding: 14px 0;
            border-radius: 60px;
            font-weight: 600;
            margin-top: 12px;
            transition: 0.2s;
            cursor: pointer;
            display: flex;
            gap: 8px;
            align-items: center;
            justify-content: center;
        }
        .add-to-cart-btn:hover {
            background: #ff6b4a;
        }

        /* deal banner premium */
        .deal-premium {
            background: linear-gradient(105deg, #13294b 0%, #1e3a5f 100%);
            border-radius: 48px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            overflow: hidden;
            margin: 56px 0;
            box-shadow: var(--shadow-lg);
        }
        .deal-img {
            flex: 1.2;
            min-height: 300px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80') center/cover;
        }
        .deal-content {
            flex: 1;
            padding: 42px 36px;
            color: white;
        }
        .timer-modern {
            display: flex;
            gap: 16px;
            margin: 28px 0;
        }
        .time-block {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(4px);
            border-radius: 28px;
            padding: 14px 12px;
            min-width: 80px;
            text-align: center;
            font-weight: 700;
        }

        /* testimonials slick */
        .testimonial-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 16px 0 32px;
            scrollbar-width: thin;
        }
        .testimonial-card {
            min-width: 320px;
            background: white;
            border-radius: 32px;
            padding: 28px;
            box-shadow: var(--shadow-sm);
        }

        /* newsletter premium */
        .newsletter-modern {
            background: radial-gradient(circle at 10% 30%, #ffe8df, #fff3ea);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
        }
        .newsletter-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 28px;
        }
        .newsletter-group input {
            padding: 16px 24px;
            border-radius: 80px;
            border: none;
            width: 300px;
            font-size: 16px;
            background: white;
            box-shadow: var(--shadow-sm);
        }

        footer {
            padding: 48px 0 32px;
            border-top: 1px solid #eae6df;
            margin-top: 40px;
        }

        @media (max-width: 960px) {
            .nav-links { display: none; }
            .mobile-menu-btn { display: block; }
            .hero-text h1 { font-size: 42px; }
            .search-wrapper { width: 200px; }
        }
        @media (max-width: 680px) {
            .container { padding: 0 20px; }
            .hero-text h1 { font-size: 36px; }
        }
        .mobile-nav-active {
            display: flex !important;
            flex-direction: column;
            background: white;
            padding: 24px;
            border-radius: 32px;
            gap: 18px;
            margin-top: 12px;
            box-shadow: var(--shadow-lg);
        }
    </style>
</head>
<body>

<header>
    <div class="container header-flex">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-menu-btn" id="mobileMenuToggle"><i class="fas fa-bars"></i></button>
            <div class="brand-logo">NOVA<span>Cart</span></div>
        </div>
        <div class="nav-links" id="desktopNav">
            <a href="#">Home</a>
            <a href="#productsSection">Shop</a>
            <a href="#dealsSection">Offers</a>
            <a href="#">Magazine</a>
        </div>
        <div style="display: flex; gap: 16px; align-items: center;">
            <div class="search-wrapper">
                <i class="fas fa-search" style="color:#ff6b4a;"></i>
                <input type="text" id="searchInput" placeholder="Search products...">
            </div>
            <div class="cart-icon" id="cartBtn">
                <i class="fas fa-bag-shopping fa-lg"></i>
                <span class="cart-count-badge" id="cartCountDisplay">0</span>
            </div>
        </div>
    </div>
    <div id="mobileNavPanel" style="display: none; background: #fff; padding: 0 24px 20px;"></div>
</header>

<main>
    <!-- HERO modern -->
    <div class="hero-modern">
        <div class="container hero-grid">
            <div class="hero-text">
                <h1>Where style meets<br>velocity</h1>
                <p>Limited drops, iconic designs, and next‑gen electronics — curated for the bold.</p>
                <div class="btn-group">
                    <button class="btn-primary-glow" id="shopNowHero">Explore collection <i class="fas fa-arrow-right"></i></button>
                    <button class="btn-outline-light" id="dealsHeroBtn">Flash deals →</button>
                </div>
            </div>
            <div style="flex: 1; text-align: center;">
                <i class="fas fa-crown" style="font-size: 100px; opacity: 0.2; color: #ff6b4a;"></i>
            </div>
        </div>
    </div>

    <div class="container">
        <!-- Categories section -->
        <div style="margin-top: 32px;">
            <div class="section-title">Shop by <span style="color:#ff6b4a;">vibe</span></div>
            <p class="muted">Curated categories for your lifestyle</p>
        </div>
        <div class="grid-categories" id="categoriesGridModern"></div>

        <!-- Products section -->
        <div id="productsSection">
            <div class="section-title" style="margin-top: 32px;">Trending <span style="color:#ff6b4a;">essentials</span></div>
            <div class="product-grid" id="productsGridModern"></div>
        </div>

        <!-- DEAL premium -->
        <div id="dealsSection">
            <div class="deal-premium">
                <div class="deal-img"></div>
                <div class="deal-content">
                    <h2 style="font-size: 38px; font-weight: 700;">⚡ Flash Drop</h2>
                    <p style="opacity: 0.9;">MacBook Air M2 · Next‑gen performance, ultra light. Limited stock.</p>
                    <div class="timer-modern" id="timerRoot">
                        <div class="time-block"><span id="dealDays">0</span><br>Days</div>
                        <div class="time-block"><span id="dealHours">00</span><br>Hrs</div>
                        <div class="time-block"><span id="dealMinutes">00</span><br>Min</div>
                        <div class="time-block"><span id="dealSeconds">00</span><br>Sec</div>
                    </div>
                    <div style="display: flex; gap: 20px; align-items: baseline; flex-wrap: wrap;">
                        <span style="font-size: 36px; font-weight: 800;">$999</span>
                        <span style="text-decoration: line-through; opacity: 0.6;">$1,299</span>
                        <span style="background: #ff6b4a; padding: 6px 16px; border-radius: 60px;">-23%</span>
                    </div>
                    <button id="dealBuyBtn" style="margin-top: 28px; background: white; color:#13294b; border: none; padding: 12px 32px; border-radius: 60px; font-weight: 700; cursor: pointer;">Add to cart 🛒</button>
                </div>
            </div>
        </div>

        <!-- Testimonials slick -->
        <div>
            <div class="section-title">Voices of <span style="color:#ff6b4a;">Nova</span></div>
            <div class="testimonial-scroll" id="testimonialModern">
                <div class="testimonial-card"><i class="fas fa-star" style="color:#ffb347;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p style="margin: 12px 0;">"Absolutely stunning — the design and quality are next level."</p><b>— Sofia R.</b></div>
                <div class="testimonial-card"><i class="fas fa-star" style="color:#ffb347;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><p>"Super fast shipping and premium packaging. 10/10."</p><b>— Marcus T.</b></div>
                <div class="testimonial-card"><i class="fas fa-star" style="color:#ffb347;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p>"NovaCart is my new favorite store for curated goods."</p><b>— Elena K.</b></div>
            </div>
        </div>

        <!-- Newsletter -->
        <div class="newsletter-modern">
            <h3 style="font-size: 32px; font-weight: 700;">Join the inner circle</h3>
            <p>Get early access to drops, members‑only discounts & style guides</p>
            <div class="newsletter-group">
                <input type="email" id="newsEmail" placeholder="Your email address">
                <button id="newsSubscribeBtn" style="background: #13294b; color: white; border: none; border-radius: 60px; padding: 0 28px; font-weight: 600; cursor: pointer;">Subscribe</button>
            </div>
            <div id="newsMsg" style="margin-top: 14px; font-size: 14px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><div class="brand-logo" style="font-size: 24px;">NOVA<span>Cart</span></div><p style="margin-top: 12px; color: #5a5a6e;">Timeless design, modern commerce.</p></div>
        <div><h4>Explore</h4><p>New arrivals<br>Best sellers<br>Gift guides</p></div>
        <div><h4>Support</h4><p>FAQs<br>Shipping<br>Returns</p></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 48px; font-size: 13px; color:#8f8f9e;">© 2026 NovaCart — all rights reserved.</div>
</footer>

<script>
    // ---------- DATA MODELS ----------
    const CATEGORIES_NEW = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen-button' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Streetwear', icon: 'fa-shirt' },
        { id: 'gadgets', name: 'Audio', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Sneakers', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Luxe Acc.', icon: 'fa-gem' }
    ];

    const PRODUCTS_LIST = [
        { id: 1, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 210, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 2, title: 'ZenBook Pro Duo', price: 1799, rating: 4.8, reviews: 88, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'AirPods Max', price: 479, oldPrice: 549, rating: 5, reviews: 312, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 4, title: 'Ultraboost 23', price: 189, rating: 4.7, reviews: 97, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Sony A7R V', price: 2899, rating: 5, reviews: 47, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 6, title: 'Designer Backpack', price: 129, oldPrice: 199, rating: 4.9, reviews: 150, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 7, title: 'Minimalist Watch', price: 249, rating: 4.6, reviews: 73, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 8, title: 'Oversized Hoodie', price: 89, rating: 4.8, reviews: 206, img: 'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80', category: 'clothing' }
    ];

    let cartItemCount = 0;

    // DOM elements
    const categoriesContainer = document.getElementById('categoriesGridModern');
    const productsContainer = document.getElementById('productsGridModern');
    const cartCountSpan = document.getElementById('cartCountDisplay');
    const searchField = document.getElementById('searchInput');

    function updateCartUI() {
        cartCountSpan.innerText = cartItemCount;
    }

    function addToCart(productId) {
        const product = PRODUCTS_LIST.find(p => p.id === productId);
        if (!product) return;
        cartItemCount++;
        updateCartUI();
        // visual feedback
        const btn = document.querySelector(`.add-btn-modern[data-id='${productId}']`);
        if (btn) {
            const original = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            btn.style.background = "#2e7d32";
            setTimeout(() => {
                btn.innerHTML = '<i class="fas fa-cart-shopping"></i> Add to cart';
                btn.style.background = "#13294b";
            }, 1000);
        }
    }

    function renderCategoriesModern() {
        categoriesContainer.innerHTML = '';
        CATEGORIES_NEW.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card-modern';
            card.innerHTML = `
                <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                <h3 style="margin-top: 12px;">${cat.name}</h3>
                <p style="font-size: 13px; color:#9696a5;">${cat.id}</p>
            `;
            card.addEventListener('click', () => {
                searchField.value = cat.name;
                filterProductsList(cat.name);
            });
            categoriesContainer.appendChild(card);
        });
    }

    function filterProductsList(query) {
        const q = query.trim().toLowerCase();
        if (!q) return renderProductsModern(PRODUCTS_LIST);
        const filtered = PRODUCTS_LIST.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProductsModern(filtered);
    }

    function renderProductsModern(productsArray) {
        productsContainer.innerHTML = '';
        productsArray.forEach(prod => {
            const productCard = document.createElement('div');
            productCard.className = 'product-card';
            const starFull = '★'.repeat(Math.floor(prod.rating));
            const starHalf = prod.rating % 1 >= 0.5 ? '½' : '';
            const ratingDisplay = starFull + starHalf;
            productCard.innerHTML = `
                <img class="product-img" src="${prod.img}" alt="${prod.title}" loading="lazy">
                <div class="product-info">
                    <h3 style="font-size: 20px;">${prod.title}</h3>
                    <div class="rating-stars">${ratingDisplay} <span style="font-size: 13px;">(${prod.reviews})</span></div>
                    <div style="margin: 12px 0;"><span class="price-tag">$${prod.price}</span> ${prod.oldPrice ? `<span class="old-price">$${prod.oldPrice}</span>` : ''}</div>
                    <button class="add-to-cart-btn add-btn-modern" data-id="${prod.id}"><i class="fas fa-cart-shopping"></i> Add to cart</button>
                </div>
            `;
            productsContainer.appendChild(productCard);
        });
        document.querySelectorAll('.add-btn-modern').forEach(btn => {
            const id = parseInt(btn.dataset.id);
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                addToCart(id);
            });
        });
    }

    // DEAL COUNTDOWN
    function initDealTimer() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 1);
        targetDate.setHours(targetDate.getHours() + 8);
        const timerInterval = setInterval(() => {
            const now = new Date();
            const diff = targetDate - now;
            if (diff <= 0) {
                clearInterval(timerInterval);
                document.getElementById('dealDays').innerText = '0';
                document.getElementById('dealHours').innerText = '00';
                document.getElementById('dealMinutes').innerText = '00';
                document.getElementById('dealSeconds').innerText = '00';
                return;
            }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }, 1000);
    }

    // MOBILE MENU LOGIC
    const mobileToggleBtn = document.getElementById('mobileMenuToggle');
    const mobilePanel = document.getElementById('mobileNavPanel');
    mobileToggleBtn.addEventListener('click', () => {
        if (mobilePanel.style.display === 'none' || !mobilePanel.style.display) {
            mobilePanel.style.display = 'block';
            mobilePanel.innerHTML = `<div style="display:flex; flex-direction:column; gap: 16px; padding: 18px 0;"><a href="#">Home</a><a href="#productsSection">Shop</a><a href="#dealsSection">Offers</a><a href="#">Contact</a></div>`;
        } else {
            mobilePanel.style.display = 'none';
        }
    });

    // newsletter logic
    document.getElementById('newsSubscribeBtn').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value;
        const msgDiv = document.getElementById('newsMsg');
        if (!email || !email.includes('@')) {
            msgDiv.innerHTML = '✧ Please enter a valid email ✧';
            msgDiv.style.color = '#ff6b4a';
        } else {
            msgDiv.innerHTML = '🎉 You’re in! Welcome to NovaCart club.';
            msgDiv.style.color = '#1e7932';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 3000);
        }
    });

    // Deal add to cart
    document.getElementById('dealBuyBtn').addEventListener('click', () => {
        cartItemCount++;
        updateCartUI();
        const dealBtn = document.getElementById('dealBuyBtn');
        const origText = dealBtn.innerText;
        dealBtn.innerText = '✓ Added to cart!';
        setTimeout(() => dealBtn.innerText = origText, 1500);
    });

    // Hero buttons
    document.getElementById('shopNowHero').addEventListener('click', () => {
        document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('dealsHeroBtn').addEventListener('click', () => {
        document.getElementById('dealsSection').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('cartBtn').addEventListener('click', () => {
        alert(`✨ Cart contains ${cartItemCount} item(s). This is a demo experience. ✨`);
    });
    searchField.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProductsList(searchField.value); });

    // Initial rendering
    renderCategoriesModern();
    renderProductsModern(PRODUCTS_LIST);
    updateCartUI();
    initDealTimer();
</script>
</body>
</html>
