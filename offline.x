<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-commerce Website</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* Reset and Base Styles */
        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        :root {
            --color-black: #171717;
            --color-dark-gray: #222222;
            --color-medium-gray: #484848;
            --color-light-gray: #888888;
            --color-lighter-gray: #e0e0e0;
            --color-white: #ffffff;
            --spacing-xs: 0.25rem;
            --spacing-sm: 0.5rem;
            --spacing-md: 1rem;
            --spacing-lg: 2rem;
            --spacing-xl: 4rem;
            --border-radius: 4px;
            --transition: all 0.3s ease;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            color: var(--color-black);
            line-height: 1.6;
            background-color: var(--color-white);
            overflow-x: hidden;
        }

        img {
            max-width: 100%;
            height: auto;
            display: block;
        }

        a {
            color: var(--color-black);
            text-decoration: none;
            transition: var(--transition);
            cursor: pointer;
        }

        a:hover {
            color: var(--color-medium-gray);
        }

        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            transition: var(--transition);
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 var(--spacing-md);
        }

        .section {
            padding: var(--spacing-xl) 0;
        }

        .section-title {
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: var(--spacing-lg);
            text-align: center;
        }

        /* Header Styles */
        .header {
            position: sticky;
            top: 0;
            background-color: var(--color-white);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            padding: var(--spacing-md) 0;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
        }

        .nav {
            display: flex;
            gap: var(--spacing-lg);
        }

        .nav-link {
            font-weight: 500;
        }

        .nav-link.active {
            font-weight: 700;
            color: var(--color-medium-gray);
        }

        .cart-icon {
            position: relative;
            font-size: 1.5rem;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background-color: var(--color-black);
            color: var(--color-white);
            font-size: 0.75rem;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Mobile Menu */
        .mobile-menu-button {
            display: none;
            font-size: 1.5rem;
        }

        .mobile-menu {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: var(--color-white);
            z-index: 1500;
            padding: var(--spacing-lg);
            transform: translateX(-100%);
            transition: transform 0.3s ease;
        }

        .mobile-menu.open {
            transform: translateX(0);
        }

        .mobile-menu-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: var(--spacing-lg);
        }

        .mobile-menu-close {
            font-size: 1.5rem;
        }

        .mobile-nav {
            display: flex;
            flex-direction: column;
            gap: var(--spacing-md);
        }

        .mobile-nav-link {
            font-size: 1.25rem;
            padding: var(--spacing-sm) 0;
            border-bottom: 1px solid var(--color-lighter-gray);
        }

      /* Hero Section */
.hero {
    height: 80vh;
    background-color: var(--color-lighter-gray);
    display: flex;
    align-items: flex-end; /* Tekst onderaan plaatsen */
    justify-content: center; /* Horizontaal centreren */
    position: relative;
    overflow: hidden;
    padding-bottom: var(--spacing-lg); /* Ruimte tussen tekst en onderkant */
}

.hero-video {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: 1;
}

.hero-content {
    position: relative;
    z-index: 2;
    max-width: 600px;
    padding: var(--spacing-lg);
    background-color: rgba(255, 255, 255, 0.9);
    border-radius: var(--border-radius);
    text-align: center; /* Centraal uitlijnen van tekst */
}

.hero-title {
    font-size: 3rem;
    font-weight: 700;
    margin-bottom: var(--spacing-md);
}

.hero-description {
    font-size: 1.25rem;
    margin-bottom: var(--spacing-lg);
}

.btn {
    display: inline-block;
    padding: var(--spacing-md) var(--spacing-lg);
    background-color: var(--color-black);
    color: var(--color-white);
    font-weight: 600;
    border-radius: var(--border-radius);
    text-align: center;
}

.btn:hover {
    background-color: var(--color-dark-gray);
    color: var(--color-white);
}

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: var(--spacing-lg);
        }

        .product-card {
            border: 1px solid var(--color-lighter-gray);
            border-radius: var(--border-radius);
            overflow: hidden;
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .product-image-container {
            position: relative;
            padding-top: 100%; /* 1:1 Aspect Ratio */
            overflow: hidden;
            background-color: var(--color-lighter-gray);
        }

        .product-image {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .product-card:hover .product-image {
            transform: scale(1.05);
        }

        .product-info {
            padding: var(--spacing-md);
        }

        .product-title {
            font-size: 1rem;
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
        }

        .product-price {
            font-weight: 700;
            margin-bottom: var(--spacing-xs);
        }

        .product-seller {
            font-size: 0.875rem;
            color: var(--color-medium-gray);
            margin-bottom: var(--spacing-xs);
        }

        .product-description {
            font-size: 0.875rem;
            margin-bottom: var(--spacing-md);
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .product-category {
            display: inline-block;
            font-size: 0.75rem;
            padding: 2px 8px;
            background-color: var(--color-lighter-gray);
            border-radius: 12px;
        }

        /* Product Modal */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 2000;
            overflow-y: auto;
        }

        .modal-content {
            position: relative;
            background-color: var(--color-white);
            margin: 5% auto;
            padding: var(--spacing-lg);
            width: 90%;
            max-width: 1000px;
            border-radius: var(--border-radius);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .close-modal {
            position: absolute;
            top: var(--spacing-md);
            right: var(--spacing-md);
            font-size: 1.5rem;
            font-weight: 700;
            cursor: pointer;
        }

        .product-detail {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: var(--spacing-lg);
        }

        .product-slider {
            position: relative;
            overflow: hidden;
            border-radius: var(--border-radius);
        }

        .slider-container {
            display: flex;
            transition: transform 0.5s ease;
        }

        .slider-image {
            flex: 0 0 100%;
            height: 400px;
            object-fit: contain;
            background-color: var(--color-lighter-gray);
        }

        .slider-nav {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 1.5rem;
            cursor: pointer;
            z-index: 10;
        }

        .slider-prev {
            left: 10px;
        }

        .slider-next {
            right: 10px;
        }

        .product-detail-info {
            display: flex;
            flex-direction: column;
        }

        .product-detail-title {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: var(--spacing-sm);
        }

        .product-detail-price {
            font-size: 1.25rem;
            font-weight: 700;
            margin-bottom: var(--spacing-md);
        }

        .product-detail-description {
            margin-bottom: var(--spacing-md);
        }

        .product-detail-meta {
            margin-bottom: var(--spacing-md);
        }

        .product-detail-meta p {
            margin-bottom: var(--spacing-xs);
        }

        .product-options {
            margin-bottom: var(--spacing-lg);
        }

        .option-title {
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
        }

        .option-buttons {
            display: flex;
            flex-wrap: wrap;
            gap: var(--spacing-xs);
            margin-bottom: var(--spacing-md);
        }

        .option-button {
            padding: var(--spacing-xs) var(--spacing-sm);
            border: 1px solid var(--color-lighter-gray);
            border-radius: var(--border-radius);
            background-color: var(--color-white);
        }

        .option-button.selected {
            background-color: var(--color-black);
            color: var(--color-white);
            border-color: var(--color-black);
        }

        .quantity-selector {
            display: flex;
            align-items: center;
            margin-bottom: var(--spacing-lg);
        }

        .quantity-btn {
            width: 30px;
            height: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: var(--color-lighter-gray);
            border-radius: var(--border-radius);
        }

        .quantity-input {
            width: 50px;
            height: 30px;
            text-align: center;
            margin: 0 var(--spacing-xs);
            border: 1px solid var(--color-lighter-gray);
            border-radius: var(--border-radius);
        }

        .add-to-cart-btn {
            width: 100%;
            padding: var(--spacing-md);
            background-color: var(--color-black);
            color: var(--color-white);
            font-weight: 600;
            border-radius: var(--border-radius);
            margin-bottom: var(--spacing-md);
        }

        .add-to-cart-btn:hover {
            background-color: var(--color-dark-gray);
        }

        .share-buttons {
            display: flex;
            gap: var(--spacing-sm);
        }

        .share-button {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: var(--color-lighter-gray);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Favorites and Recommendations */
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: var(--spacing-lg);
        }

        .card {
            border: 1px solid var(--color-lighter-gray);
            border-radius: var(--border-radius);
            overflow: hidden;
            transition: var(--transition);
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .card-image-container {
            position: relative;
            padding-top: 60%; /* 3:5 Aspect Ratio */
            overflow: hidden;
            background-color: var(--color-lighter-gray);
        }

        .card-image {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .card:hover .card-image {
            transform: scale(1.05);
        }

        .card-info {
            padding: var(--spacing-md);
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
        }

        .card-description {
            font-size: 0.875rem;
            margin-bottom: var(--spacing-sm);
        }

        .card-address {
            font-size: 0.875rem;
            color: var(--color-medium-gray);
            margin-bottom: var(--spacing-sm);
        }

        .card-quote {
            font-style: italic;
            font-size: 0.875rem;
            color: var(--color-medium-gray);
        }

        /* Terms and Conditions */
        .terms {
            max-width: 800px;
            margin: 0 auto;
        }

        .terms h3 {
            margin-top: var(--spacing-lg);
            margin-bottom: var(--spacing-sm);
        }

        .terms p {
            margin-bottom: var(--spacing-md);
        }

        /* Footer */
        .footer {
            background-color: var(--color-dark-gray);
            color: var(--color-white);
            padding: var(--spacing-xl) 0;
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: var(--spacing-lg);
        }

        .footer-section h3 {
            font-size: 1.25rem;
            margin-bottom: var(--spacing-md);
        }

        .footer-links {
            list-style: none;
        }

        .footer-link {
            margin-bottom: var(--spacing-xs);
        }

        .footer-link a {
            color: var(--color-lighter-gray);
        }

        .footer-link a:hover {
            color: var(--color-white);
        }

        .contact-info p {
            margin-bottom: var(--spacing-xs);
        }

        .copyright {
            text-align: center;
            padding-top: var(--spacing-lg);
            border-top: 1px solid var(--color-medium-gray);
            margin-top: var(--spacing-lg);
        }

        .powered-by {
            text-align: center;
            margin-top: var(--spacing-sm);
            font-size: 0.875rem;
            color: var(--color-lighter-gray);
        }

        /* Shopping Cart */
        .cart-sidebar {
            position: fixed;
            top: 0;
            right: -400px;
            width: 100%;
            max-width: 400px;
            height: 100%;
            background-color: var(--color-white);
            box-shadow: -5px 0 15px rgba(0, 0, 0, 0.1);
            z-index: 1500;
            transition: right 0.3s ease;
            overflow-y: auto;
        }

        .cart-sidebar.open {
            right: 0;
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: var(--spacing-md);
            border-bottom: 1px solid var(--color-lighter-gray);
        }

        .cart-title {
            font-size: 1.25rem;
            font-weight: 600;
        }

        .close-cart {
            font-size: 1.5rem;
            cursor: pointer;
        }

        .cart-items {
            padding: var(--spacing-md);
        }

        .cart-empty {
            text-align: center;
            padding: var(--spacing-lg);
            color: var(--color-medium-gray);
        }

        .cart-item {
            display: flex;
            gap: var(--spacing-md);
            padding: var(--spacing-md) 0;
            border-bottom: 1px solid var(--color-lighter-gray);
        }

        .cart-item-image {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: var(--border-radius);
        }

        .cart-item-details {
            flex: 1;
        }

        .cart-item-title {
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
        }

        .cart-item-price {
            font-weight: 500;
            margin-bottom: var(--spacing-xs);
        }

        .cart-item-quantity {
            display: flex;
            align-items: center;
            gap: var(--spacing-xs);
        }

        .cart-item-remove {
            color: var(--color-medium-gray);
            cursor: pointer;
        }

        .cart-footer {
            padding: var(--spacing-md);
            border-top: 1px solid var(--color-lighter-gray);
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            font-weight: 600;
            margin-bottom: var(--spacing-md);
        }

        .checkout-btn {
            width: 100%;
            padding: var(--spacing-md);
            background-color: var(--color-black);
            color: var(--color-white);
            font-weight: 600;
            border-radius: var(--border-radius);
            text-align: center;
        }

        .checkout-btn:hover {
            background-color: var(--color-dark-gray);
        }

        /* Toast Notification */
        .toast {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: var(--color-black);
            color: var(--color-white);
            padding: var(--spacing-md) var(--spacing-lg);
            border-radius: var(--border-radius);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            z-index: 2500;
            transform: translateY(100px);
            opacity: 0;
            transition: transform 0.3s ease, opacity 0.3s ease;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* Page Sections */
        .page {
            display: none;
        }

        .page.active {
            display: block;
        }

        /* Loading */
        .loading {
            text-align: center;
            padding: var(--spacing-lg);
            color: var(--color-medium-gray);
        }

        /* Contact Page */
        .contact-form {
            max-width: 600px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: var(--spacing-md);
        }

        .form-label {
            display: block;
            margin-bottom: var(--spacing-xs);
            font-weight: 500;
        }

        .form-input {
            width: 100%;
            padding: var(--spacing-sm);
            border: 1px solid var(--color-lighter-gray);
            border-radius: var(--border-radius);
        }

        .form-textarea {
            width: 100%;
            padding: var(--spacing-sm);
            border: 1px solid var(--color-lighter-gray);
            border-radius: var(--border-radius);
            min-height: 150px;
        }

        .submit-btn {
            padding: var(--spacing-sm) var(--spacing-lg);
            background-color: var(--color-black);
            color: var(--color-white);
            font-weight: 600;
            border-radius: var(--border-radius);
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: var(--color-dark-gray);
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .nav {
                display: none;
            }

            .mobile-menu-button {
                display: block;
            }

            .hero-title {
                font-size: 2rem;
            }

            .hero-description {
                font-size: 1rem;
            }

            .product-detail {
                grid-template-columns: 1fr;
            }

            .slider-image {
                height: 300px;
            }
        }

        @media (max-width: 480px) {
            .section-title {
                font-size: 1.5rem;
            }

            .hero {
                height: 60vh;
            }

            .hero-content {
                padding: var(--spacing-md);
            }

            .hero-title {
                font-size: 1.5rem;
            }

            .products-grid, .card-grid {
                grid-template-columns: 1fr;
            }

            .modal-content {
                padding: var(--spacing-md);
                margin: 10% auto;
                width: 95%;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container header-container">
            <a href="#" class="logo" data-page="home">AMSTEL & APPIAH</a>
            <nav class="nav">
                <a href="https://vanappiah.com/" class="nav-link">Van Appiah</a>
    <a href="#" class="nav-link active" data-page="home">Home</a>
    <a href="#" class="nav-link" data-page="products">Producten</a>
    <a href="#" class="nav-link" data-page="favorites">Favorieten</a>
    <a href="#" class="nav-link" data-page="recommendations">Aanbevelingen</a>
    <a href="#" class="nav-link" data-page="terms">Voorwaarden</a>
    <a href="#" class="nav-link" data-page="contact">Contact</a>
</nav>
            <div class="header-actions">
                <button class="mobile-menu-button" id="mobile-menu-button">☰</button>
                <button class="cart-icon" id="cart-button">
                    🛒
                    <span class="cart-count" id="cart-count">0</span>
                </button>
            </div>
        </div>
    </header>

    <!-- Mobile Menu -->
    <div class="mobile-menu" id="mobile-menu">
        <div class="mobile-menu-header">
            <span class="logo">SHOP</span>
            <button class="mobile-menu-close" id="mobile-menu-close">✕</button>
        </div>
        <nav class="mobile-nav">
    <a href="https://vanappiah.com/" class="mobile-nav-link">Van Appiah</a>
    <a href="#" class="mobile-nav-link active" data-page="home">Home</a>
    <a href="#" class="mobile-nav-link" data-page="products">Producten</a>
    <a href="#" class="mobile-nav-link" data-page="favorites">Favorieten</a>
    <a href="#" class="mobile-nav-link" data-page="recommendations">Aanbevelingen</a>
    <a href="#" class="mobile-nav-link" data-page="terms">Voorwaarden</a>
    <a href="#" class="mobile-nav-link" data-page="contact">Contact</a>
</nav>
    </div>

    <!-- Home Page -->
    <div class="page active" id="home-page">
        <!-- Hero Section -->
        <section class="hero">
            <video class="hero-video" id="hero-video" autoplay muted loop playsinline>
              <source src="Amstel & Appiah.mp4" type="video/mp4">
              Je browser ondersteunt deze video niet.
            </video>
          
            <div class="container">
              <div class="hero-content">
                <h1 class="hero-title">Ontdek onze collectie</h1>
                <p class="hero-description">Bekijk onze nieuwste producten en aanbevelingen.</p>
                <a href="#" class="btn" data-page="products">Bekijk Producten</a>
              </div>
            </div>
          </section>
          

        <!-- Featured Products Section -->
        <section class="section">
            <div class="container">
                <h2 class="section-title">Uitgelichte Producten</h2>
                <div class="products-grid" id="featured-products-grid">
                    <!-- Featured products will be loaded here -->
                    <div class="loading">Producten laden...</div>
                </div>
                <div class="text-center" style="text-align: center; margin-top: 2rem;">
                    <a href="#" class="btn" data-page="products">Alle Producten Bekijken</a>
                </div>
            </div>
        </section>

        <!-- Featured Favorites Section -->
        <section class="section">
            <div class="container">
                <h2 class="section-title">Favorieten in de Stad</h2>
                <div class="card-grid" id="featured-favorites-grid">
                    <!-- Featured favorites will be loaded here -->
                    <div class="loading">Favorieten laden...</div>
                </div>
                <div class="text-center" style="text-align: center; margin-top: 2rem;">
                    <a href="#" class="btn" data-page="favorites">Alle Favorieten Bekijken</a>
                </div>
            </div>
        </section>

        <!-- Featured Recommendations Section -->
        <section class="section">
            <div class="container">
                <h2 class="section-title">Onze Aanbeveling</h2>
                <div class="card-grid" id="featured-recommendations-grid">
                    <!-- Featured recommendations will be loaded here -->
                    <div class="loading">Aanbevelingen laden...</div>
                </div>
                <div class="text-center" style="text-align: center; margin-top: 2rem;">
                    <a href="#" class="btn" data-page="recommendations">Alle Aanbevelingen Bekijken</a>
                </div>
            </div>
        </section>
    </div>

    <!-- Products Page -->
    <div class="page" id="products-page">
        <section class="section">
            <div class="container">
                <h2 class="section-title">Onze Producten</h2>
                <div class="products-grid" id="products-grid">
                    <!-- Products will be loaded here -->
                    <div class="loading">Producten laden...</div>
                </div>
            </div>
        </section>
    </div>

    <!-- Favorites Page -->
    <div class="page" id="favorites-page">
        <section class="section">
            <div class="container">
                <h2 class="section-title">Favorieten in de Stad</h2>
                <div class="card-grid" id="favorites-grid">
                    <!-- Favorites will be loaded here -->
                    <div class="loading">Favorieten laden...</div>
                </div>
            </div>
        </section>
    </div>

    <!-- Recommendations Page -->
    <div class="page" id="recommendations-page">
        <section class="section">
            <div class="container">
                <h2 class="section-title">Onze Aanbeveling</h2>
                <div class="card-grid" id="recommendations-grid">
                    <!-- Recommendations will be loaded here -->
                    <div class="loading">Aanbevelingen laden...</div>
                </div>
            </div>
        </section>
    </div>

    <!-- Terms and Conditions Page -->
    <div class="page" id="terms-page">
        <section class="section">
            <div class="container">
                <h2 class="section-title">Algemene Voorwaarden</h2>
                <div class="terms">
                    <h3>1. Algemeen</h3>
                    <p>Deze algemene voorwaarden zijn van toepassing op alle aanbiedingen en overeenkomsten waarbij producten worden aangeboden.</p>
                    
                    <h3>2. Prijzen en Betalingen</h3>
                    <p>Alle prijzen zijn in euro's en inclusief BTW. Betaling dient te geschieden binnen 14 dagen na factuurdatum.</p>
                    
                    <h3>3. Levering</h3>
                    <p>Levering vindt plaats op het door de klant opgegeven adres. De levertijd is afhankelijk van het product en wordt bij bestelling vermeld.</p>
                    
                    <h3>4. Retourneren</h3>
                    <p>Producten kunnen binnen 14 dagen na ontvangst worden geretourneerd. De producten dienen ongebruikt en in de originele verpakking te worden teruggestuurd.</p>
                    
                    <h3>5. Privacy</h3>
                    <p>Wij respecteren de privacy van onze klanten en behandelen alle persoonlijke informatie vertrouwelijk.</p>
                </div>
            </div>
        </section>
    </div>

    <!-- Contact Page -->
    <div class="page" id="contact-page">
        <section class="section">
            <div class="container">
                <h2 class="section-title">Contact</h2>
                <div class="contact-form">
                    <form id="contact-form">
                        <div class="form-group">
                            <label for="name" class="form-label">Naam</label>
                            <input type="text" id="name" name="name" class="form-input" required>
                        </div>
                        <div class="form-group">
                            <label for="email" class="form-label">E-mail</label>
                            <input type="email" id="email" name="email" class="form-input" required>
                        </div>
                        <div class="form-group">
                            <label for="subject" class="form-label">Onderwerp</label>
                            <input type="text" id="subject" name="subject" class="form-input" required>
                        </div>
                        <div class="form-group">
                            <label for="message" class="form-label">Bericht</label>
                            <textarea id="message" name="message" class="form-textarea" required></textarea>
                        </div>
                        <button type="submit" class="submit-btn">Versturen</button>
                    </form>
                </div>
            </div>
        </section>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-container">
                <div class="footer-section">
                    <h3>Navigatie</h3>
                    <ul class="footer-links">
    <li class="footer-link"><a href="index.html">Van Appiah</a></li>
    <li class="footer-link"><a href="#" data-page="home">Home</a></li>
    <li class="footer-link"><a href="#" data-page="products">Producten</a></li>
    <li class="footer-link"><a href="#" data-page="favorites">Favorieten</a></li>
    <li class="footer-link"><a href="#" data-page="recommendations">Aanbevelingen</a></li>
    <li class="footer-link"><a href="#" data-page="terms">Voorwaarden</a></li>
    <li class="footer-link"><a href="#" data-page="contact">Contact</a></li>
</ul>
                </div>
                <div class="footer-section">
                    <h3>Contact</h3>
                    <div class="contact-info">
                        <p>Tel: 06 57160395</p>
                        <p>Email: vanappiah.com@gmail.com</p>
                        <p>Email: vawerkers@gmail.com</p>
                    </div>
                </div>
                <div class="footer-section">
                    <h3>Volg Ons</h3>
                    <div class="share-buttons">
                        <a href="#" class="share-button">FB</a>
                        <a href="#" class="share-button">IG</a>
                        <a href="#" class="share-button">TW</a>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 E-commerce Website. Alle rechten voorbehouden.</p>
                <p class="powered-by">Powered by van Appiah</p>
            </div>
        </div>
    </footer>

    <!-- Product Detail Modal -->
    <div class="modal" id="product-modal">
        <div class="modal-content">
            <span class="close-modal" id="close-modal">&times;</span>
            <div class="product-detail" id="product-detail">
                <!-- Product details will be loaded here -->
            </div>
        </div>
    </div>

    <!-- Shopping Cart Sidebar -->
    <div class="cart-sidebar" id="cart-sidebar">
        <div class="cart-header">
            <h3 class="cart-title">Winkelmandje</h3>
            <span class="close-cart" id="close-cart">&times;</span>
        </div>
        <div class="cart-items" id="cart-items">
            <!-- Cart items will be loaded here -->
            <div class="cart-empty">Je winkelmandje is leeg</div>
        </div>
        <div class="cart-footer">
            <div class="cart-total">
                <span>Totaal:</span>
                <span id="cart-total">€0,00</span>
            </div>
            <button class="checkout-btn" id="checkout-btn">Afrekenen</button>
        </div>
    </div>

    <!-- Toast Notification -->
    <div class="toast" id="toast"></div>

    <script>
        // DOM Elements
        const pages = document.querySelectorAll('.page');
        const navLinks = document.querySelectorAll('.nav-link, .mobile-nav-link, [data-page]');
        const productsGrid = document.getElementById('products-grid');
        const featuredProductsGrid = document.getElementById('featured-products-grid');
        const favoritesGrid = document.getElementById('favorites-grid');
        const featuredFavoritesGrid = document.getElementById('featured-favorites-grid');
        const recommendationsGrid = document.getElementById('recommendations-grid');
        const featuredRecommendationsGrid = document.getElementById('featured-recommendations-grid');
        const productModal = document.getElementById('product-modal');
        const productDetail = document.getElementById('product-detail');
        const closeModal = document.getElementById('close-modal');
        const cartButton = document.getElementById('cart-button');
        const cartSidebar = document.getElementById('cart-sidebar');
        const closeCart = document.getElementById('close-cart');
        const cartItems = document.getElementById('cart-items');
        const cartCount = document.getElementById('cart-count');
        const cartTotal = document.getElementById('cart-total');
        const toast = document.getElementById('toast');
        const heroVideo = document.getElementById('hero-video');

        const mobileMenuButton = document.getElementById('mobile-menu-button');
        const mobileMenu = document.getElementById('mobile-menu');
        const mobileMenuClose = document.getElementById('mobile-menu-close');
        const checkoutBtn = document.getElementById('checkout-btn');
        const contactForm = document.getElementById('contact-form');

        // Data URLs
        const productsUrl = 'https://docs.google.com/spreadsheets/d/e/2PACX-1vTPI2QDOv8JAz95qrutSsELuozFT51tI_PW9DdqXRclDth_h0V9qrsbRMxuSNq-m0N1KLSYZw5z_8La/pub?output=csv';
        const favoritesUrl = 'https://docs.google.com/spreadsheets/d/e/2PACX-1vQ2EFLboVqo57jcyygRVvYt2ArQUsDoQCUL-KdKgCBlEWByYP9Jfx5hs119c9EhJDBa8r1ipV06g83_/pub?output=csv';
        const recommendationsUrl = 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRm5YGIeXtg0yd5Uso76v1SL7hTuY_yjminNoGaYrgTl652ICrqThxxolx22esLxOXY_-sJojI8dqNy/pub?output=csv';

        // Global Variables
        let products = [];
        let favorites = [];
        let recommendations = [];
        let cart = [];
        let currentPage = 'home';

        // Helper Functions
        function formatPrice(price) {
            return '€' + parseFloat(price).toFixed(2).replace('.', ',');
        }

        function showToast(message) {
            toast.textContent = message;
            toast.classList.add('show');
            setTimeout(() => {
                toast.classList.remove('show');
            }, 3000);
        }

        // Navigation Functions
        function navigateTo(page) {
            // Hide all pages
            pages.forEach(p => p.classList.remove('active'));
            
            // Show the selected page
            const pageElement = document.getElementById(`${page}-page`);
            if (pageElement) {
                pageElement.classList.add('active');
                currentPage = page;
                
                // Update active nav links
                navLinks.forEach(link => {
                    if (link.dataset.page === page) {
                        link.classList.add('active');
                    } else {
                        link.classList.remove('active');
                    }
                });
                
                // Close mobile menu if open
                mobileMenu.classList.remove('open');
                document.body.style.overflow = '';
                
                // Scroll to top
                window.scrollTo(0, 0);
                
                // Load data if needed
                if (page === 'products' && productsGrid.innerHTML.includes('Producten laden...')) {
                    loadProducts();
                } else if (page === 'favorites' && favoritesGrid.innerHTML.includes('Favorieten laden...')) {
                    loadFavorites();
                } else if (page === 'recommendations' && recommendationsGrid.innerHTML.includes('Aanbevelingen laden...')) {
                    loadRecommendations();
                }
            }
        }

        // Fetch Data from Google Sheets
        async function fetchCSV(url) {
            try {
                const response = await fetch(url);
                if (!response.ok) {
                    throw new Error(`Failed to fetch data: ${response.status}`);
                }
                const text = await response.text();
                return parseCSV(text);
            } catch (error) {
                console.error('Error fetching data:', error);
                return [];
            }
        }

        function parseCSV(text) {
            const lines = text.split('\n');
            const headers = lines[0].split(',').map(header => header.trim().replace(/^"(.*)"$/, '$1'));
            
            const result = [];
            for (let i = 1; i < lines.length; i++) {
                if (!lines[i].trim()) continue;
                
                // Handle quoted fields with commas
                const row = {};
                let currentPosition = 0;
                let fieldValue = '';
                let inQuotes = false;
                
                for (let j = 0; j < headers.length; j++) {
                    // Skip if we've reached the end of the line
                    if (currentPosition >= lines[i].length) {
                        row[headers[j]] = '';
                        continue;
                    }
                    
                    fieldValue = '';
                    inQuotes = lines[i][currentPosition] === '"';
                    
                    if (inQuotes) {
                        currentPosition++; // Skip the opening quote
                        while (currentPosition < lines[i].length) {
                            if (lines[i][currentPosition] === '"' && 
                                (currentPosition + 1 >= lines[i].length || lines[i][currentPosition + 1] === ',')) {
                                currentPosition++; // Skip the closing quote
                                break;
                            }
                            fieldValue += lines[i][currentPosition];
                            currentPosition++;
                        }
                    } else {
                        while (currentPosition < lines[i].length && lines[i][currentPosition] !== ',') {
                            fieldValue += lines[i][currentPosition];
                            currentPosition++;
                        }
                    }
                    
                    row[headers[j]] = fieldValue.trim();
                    
                    // Skip the comma
                    if (currentPosition < lines[i].length && lines[i][currentPosition] === ',') {
                        currentPosition++;
                    }
                }
                
                result.push(row);
            }
            
            return result;
        }

        // Load Products
        async function loadProducts() {
            products = await fetchCSV(productsUrl);
            renderProducts();
            renderFeaturedProducts();
            
            // Set hero image to first product image if available
            if (products.length > 0 && products[0]['Afbeelding(showroom)']) {
                heroImage.src = products[0]['Afbeelding(showroom)'];
            }
        }

        function renderProducts() {
            if (!products.length) {
                productsGrid.innerHTML = '<div class="loading">Geen producten gevonden</div>';
                return;
            }
            
            productsGrid.innerHTML = '';
            
            products.forEach((product, index) => {
                const productCard = document.createElement('div');
                productCard.className = 'product-card';
                productCard.dataset.id = index;
                
                const imageUrl = product['Afbeelding(showroom)'] || 'https://placeholder.svg?height=300&width=300';
                const name = product['Productnaam'] || 'Product';
                const price = product['Prijs'] || '0';
                const description = product['Beschrijving (kort)'] || '';
                const seller = product['Verkoper'] || 'Onbekend';
                const category = product['Categorie'] || 'Overig';
                
                productCard.innerHTML = `
                    <div class="product-image-container">
                        <img src="${imageUrl}" alt="${name}" class="product-image" loading="lazy">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">${name}</h3>
                        <p class="product-price">${formatPrice(price)}</p>
                        <p class="product-seller">Verkoper: ${seller}</p>
                        <p class="product-description">${description}</p>
                        <span class="product-category">${category}</span>
                    </div>
                `;
                
                productCard.addEventListener('click', () => {
                    openProductModal(index);
                });
                
                productsGrid.appendChild(productCard);
            });
        }

        function renderFeaturedProducts() {
            if (!products.length) {
                featuredProductsGrid.innerHTML = '<div class="loading">Geen producten gevonden</div>';
                return;
            }
            
            featuredProductsGrid.innerHTML = '';
            
            // Show only the first 4 products on the home page
            const featuredProducts = products.slice(0, 4);
            
            featuredProducts.forEach((product, index) => {
                const productCard = document.createElement('div');
                productCard.className = 'product-card';
                productCard.dataset.id = index;
                
                const imageUrl = product['Afbeelding(showroom)'] || 'https://placeholder.svg?height=300&width=300';
                const name = product['Productnaam'] || 'Product';
                const price = product['Prijs'] || '0';
                const description = product['Beschrijving (kort)'] || '';
                const seller = product['Verkoper'] || 'Onbekend';
                const category = product['Categorie'] || 'Overig';
                
                productCard.innerHTML = `
                    <div class="product-image-container">
                        <img src="${imageUrl}" alt="${name}" class="product-image" loading="lazy">
                    </div>
                    <div class="product-info">
                        <h3 class="product-title">${name}</h3>
                        <p class="product-price">${formatPrice(price)}</p>
                        <p class="product-seller">Verkoper: ${seller}</p>
                        <p class="product-description">${description}</p>
                        <span class="product-category">${category}</span>
                    </div>
                `;
                
                productCard.addEventListener('click', () => {
                    openProductModal(index);
                });
                
                featuredProductsGrid.appendChild(productCard);
            });
        }

        // Load Favorites
        async function loadFavorites() {
            favorites = await fetchCSV(favoritesUrl);
            renderFavorites();
            renderFeaturedFavorites();
        }

        function renderFavorites() {
            if (!favorites.length) {
                favoritesGrid.innerHTML = '<div class="loading">Geen favorieten gevonden</div>';
                return;
            }
            
            favoritesGrid.innerHTML = '';
            
            favorites.forEach(favorite => {
                const card = document.createElement('div');
                card.className = 'card';
                
                const imageUrl = favorite['Afbeelding (showroom)'] || 'https://placeholder.svg?height=300&width=300';
                const name = favorite['Naam locatie'] || 'Locatie';
                const description = favorite['Beschrijving'] || '';
                const address = favorite['Adres'] || '';
                const quote = favorite['Quote'] || '';
                
                card.innerHTML = `
                    <div class="card-image-container">
                        <img src="${imageUrl}" alt="${name}" class="card-image" loading="lazy">
                    </div>
                    <div class="card-info">
                        <h3 class="card-title">${name}</h3>
                        <p class="card-description">${description}</p>
                        ${address ? `<p class="card-address">Adres: ${address}</p>` : ''}
                        ${quote ? `<p class="card-quote">"${quote}"</p>` : ''}
                    </div>
                `;
                
                favoritesGrid.appendChild(card);
            });
        }

        function renderFeaturedFavorites() {
            if (!favorites.length) {
                featuredFavoritesGrid.innerHTML = '<div class="loading">Geen favorieten gevonden</div>';
                return;
            }
            
            featuredFavoritesGrid.innerHTML = '';
            
            // Show only the first 3 favorites on the home page
            const featuredFavs = favorites.slice(0, 3);
            
            featuredFavs.forEach(favorite => {
                const card = document.createElement('div');
                card.className = 'card';
                
                const imageUrl = favorite['Afbeelding (showroom)'] || 'https://placeholder.svg?height=300&width=300';
                const name = favorite['Naam locatie'] || 'Locatie';
                const description = favorite['Beschrijving'] || '';
                const address = favorite['Adres'] || '';
                const quote = favorite['Quote'] || '';
                
                card.innerHTML = `
                    <div class="card-image-container">
                        <img src="${imageUrl}" alt="${name}" class="card-image" loading="lazy">
                    </div>
                    <div class="card-info">
                        <h3 class="card-title">${name}</h3>
                        <p class="card-description">${description}</p>
                        ${address ? `<p class="card-address">Adres: ${address}</p>` : ''}
                        ${quote ? `<p class="card-quote">"${quote}"</p>` : ''}
                    </div>
                `;
                
                featuredFavoritesGrid.appendChild(card);
            });
        }

     // Load Recommendations
async function loadRecommendations() {
    recommendations = await fetchCSV(recommendationsUrl);
    renderRecommendations();
    renderFeaturedRecommendations();
}

function renderRecommendations() {
    if (!recommendations.length) {
        recommendationsGrid.innerHTML = '<div class="loading">Geen aanbevelingen gevonden</div>';
        return;
    }
    
    recommendationsGrid.innerHTML = '';
    
    recommendations.forEach(recommendation => {
        const card = document.createElement('div');
        card.className = 'card';
        
        // Zorg ervoor dat je het juiste veld gebruikt voor de naam
        const imageUrl = recommendation['Afbeelding (showroom)'] || 'https://placeholder.svg?height=300&width=300';
        const name = recommendation['Partnernaam'] || 'Aanbeveling';  // Gebruik 'Partnernaam' in plaats van 'Naam'
        const description = recommendation['Beschrijving'] || '';
        const quote = recommendation['Quote'] || '';
        
        card.innerHTML = `
            <div class="card-image-container">
                <img src="${imageUrl}" alt="${name}" class="card-image" loading="lazy">
            </div>
            <div class="card-info">
                <h3 class="card-title">${name}</h3>
                <p class="card-description">${description}</p>
                ${quote ? `<p class="card-quote">"${quote}"</p>` : ''}
            </div>
        `;
        
        recommendationsGrid.appendChild(card);
    });
}

function renderFeaturedRecommendations() {
    if (!recommendations.length) {
        featuredRecommendationsGrid.innerHTML = '<div class="loading">Geen aanbevelingen gevonden</div>';
        return;
    }
    
    featuredRecommendationsGrid.innerHTML = '';
    
    // Show only the first 3 recommendations on the home page
    const featuredRecs = recommendations.slice(0, 3);
    
    featuredRecs.forEach(recommendation => {
        const card = document.createElement('div');
        card.className = 'card';
        
        // Zorg ervoor dat je het juiste veld gebruikt voor de naam
        const imageUrl = recommendation['Afbeelding (showroom)'] || 'https://placeholder.svg?height=300&width=300';
        const name = recommendation['Partnernaam'] || 'Aanbeveling';  // Gebruik 'Partnernaam' in plaats van 'Naam'
        const description = recommendation['Beschrijving'] || '';
        const quote = recommendation['Quote'] || '';
        
        card.innerHTML = `
            <div class="card-image-container">
                <img src="${imageUrl}" alt="${name}" class="card-image" loading="lazy">
            </div>
            <div class="card-info">
                <h3 class="card-title">${name}</h3>
                <p class="card-description">${description}</p>
                ${quote ? `<p class="card-quote">"${quote}"</p>` : ''}
            </div>
        `;
        
        featuredRecommendationsGrid.appendChild(card);
    });
}


        // Product Modal
        function openProductModal(productId) {
            const product = products[productId];
            if (!product) return;
            
            const name = product['Productnaam'] || 'Product';
            const price = product['Prijs'] || '0';
            const description = product['Beschrijving'] || product['Beschrijving (kort)'] || '';
            const seller = product['Verkoper'] || 'Onbekend';
            const sizes = product['Maten'] ? product['Maten'].split(',').map(size => size.trim()) : [];
            const colors = product['Kleuren'] ? product['Kleuren'].split(',').map(color => color.trim()) : [];
            const stock = product['Voorraad'] || 'Op voorraad';
            const shippingTime = product['Verzendtijd'] || 'Binnen 1-3 werkdagen';
            const extraInfo = product['Extra info'] || '';
            
            // Get images for slider
            let images = [];
            if (product['Afbeeldingen (pagina)']) {
                images = product['Afbeeldingen (pagina)'].split(',').map(img => img.trim());
            }
            if (!images.length && product['Afbeelding(showroom)']) {
                images.push(product['Afbeelding(showroom)']);
            }
            if (!images.length) {
                images.push('https://placeholder.svg?height=400&width=400');
            }
            
            // Create slider HTML
            let sliderHtml = `
                <div class="product-slider">
                    <div class="slider-container" id="slider-container">
            `;
            
            images.forEach(image => {
                sliderHtml += `<img src="${image}" alt="${name}" class="slider-image">`;
            });
            
            sliderHtml += `
                    </div>
                    ${images.length > 1 ? `
                        <div class="slider-nav slider-prev" id="slider-prev">❮</div>
                        <div class="slider-nav slider-next" id="slider-next">❯</div>
                    ` : ''}
                </div>
            `;
            
            // Create product details HTML
            let detailsHtml = `
                <div class="product-detail-info">
                    <h2 class="product-detail-title">${name}</h2>
                    <p class="product-detail-price">${formatPrice(price)}</p>
                    <div class="product-detail-description">${description}</div>
                    
                    <div class="product-detail-meta">
                        <p><strong>Verkoper:</strong> ${seller}</p>
                        <p><strong>Voorraad:</strong> ${stock}</p>
                        <p><strong>Verzendtijd:</strong> ${shippingTime}</p>
                        ${extraInfo ? `<p><strong>Extra info:</strong> ${extraInfo}</p>` : ''}
                    </div>
            `;
            
            // Add size options if available
            if (sizes.length) {
                detailsHtml += `
                    <div class="product-options">
                        <p class="option-title">Maat:</p>
                        <div class="option-buttons" id="size-options">
                `;
                
                sizes.forEach(size => {
                    detailsHtml += `<button class="option-button" data-size="${size}">${size}</button>`;
                });
                
                detailsHtml += `
                        </div>
                    </div>
                `;
            }
            
            // Add color options if available
            if (colors.length) {
                detailsHtml += `
                    <div class="product-options">
                        <p class="option-title">Kleur:</p>
                        <div class="option-buttons" id="color-options">
                `;
                
                colors.forEach(color => {
                    detailsHtml += `<button class="option-button" data-color="${color}">${color}</button>`;
                });
                
                detailsHtml += `
                        </div>
                    </div>
                `;
            }
            
            // Add quantity selector and add to cart button
            detailsHtml += `
                    <div class="quantity-selector">
                        <button class="quantity-btn" id="decrease-quantity">-</button>
                        <input type="number" class="quantity-input" id="quantity-input" value="1" min="1">
                        <button class="quantity-btn" id="increase-quantity">+</button>
                    </div>
                    
                    <button class="add-to-cart-btn" id="add-to-cart" data-product-id="${productId}">
                        Voeg toe aan winkelmandje
                    </button>
                    
                    <div class="share-buttons">
                        <a href="https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(window.location.href)}" target="_blank" class="share-button">FB</a>
                        <a href="https://twitter.com/intent/tweet?url=${encodeURIComponent(window.location.href)}&text=${encodeURIComponent(name)}" target="_blank" class="share-button">TW</a>
                        <a href="https://wa.me/?text=${encodeURIComponent(name + ' - ' + window.location.href)}" target="_blank" class="share-button">WA</a>
                    </div>
                </div>
            `;
            
            // Set modal content
            productDetail.innerHTML = sliderHtml + detailsHtml;
            
            // Initialize slider
            let currentSlide = 0;
            const sliderContainer = document.getElementById('slider-container');
            const sliderPrev = document.getElementById('slider-prev');
            const sliderNext = document.getElementById('slider-next');
            
            if (sliderContainer && images.length > 1) {
                const updateSlider = () => {
                    sliderContainer.style.transform = `translateX(-${currentSlide * 100}%)`;
                };
                
                if (sliderPrev) {
                    sliderPrev.addEventListener('click', () => {
                        currentSlide = (currentSlide - 1 + images.length) % images.length;
                        updateSlider();
                    });
                }
                
                if (sliderNext) {
                    sliderNext.addEventListener('click', () => {
                        currentSlide = (currentSlide + 1) % images.length;
                        updateSlider();
                    });
                }
            }
            
            // Initialize size and color options
            const sizeOptions = document.getElementById('size-options');
            const colorOptions = document.getElementById('color-options');
            let selectedSize = '';
            let selectedColor = '';
            
            if (sizeOptions) {
                const sizeButtons = sizeOptions.querySelectorAll('.option-button');
                sizeButtons.forEach(button => {
                    button.addEventListener('click', () => {
                        sizeButtons.forEach(btn => btn.classList.remove('selected'));
                        button.classList.add('selected');
                        selectedSize = button.dataset.size;
                    });
                });
            }
            
            if (colorOptions) {
                const colorButtons = colorOptions.querySelectorAll('.option-button');
                colorButtons.forEach(button => {
                    button.addEventListener('click', () => {
                        colorButtons.forEach(btn => btn.classList.remove('selected'));
                        button.classList.add('selected');
                        selectedColor = button.dataset.color;
                    });
                });
            }
            
            // Initialize quantity selector
            const quantityInput = document.getElementById('quantity-input');
            const decreaseQuantity = document.getElementById('decrease-quantity');
            const increaseQuantity = document.getElementById('increase-quantity');
            
            if (decreaseQuantity && quantityInput) {
                decreaseQuantity.addEventListener('click', () => {
                    const currentValue = parseInt(quantityInput.value);
                    if (currentValue > 1) {
                        quantityInput.value = currentValue - 1;
                    }
                });
            }
            
            if (increaseQuantity && quantityInput) {
                increaseQuantity.addEventListener('click', () => {
                    const currentValue = parseInt(quantityInput.value);
                    quantityInput.value = currentValue + 1;
                });
            }
            
            // Initialize add to cart button
            const addToCartBtn = document.getElementById('add-to-cart');
            if (addToCartBtn) {
                addToCartBtn.addEventListener('click', () => {
                    const quantity = parseInt(quantityInput.value);
                    
                    // Validate selection if options are available
                    if (sizes.length && !selectedSize) {
                        showToast('Selecteer een maat');
                        return;
                    }
                    
                    if (colors.length && !selectedColor) {
                        showToast('Selecteer een kleur');
                        return;
                    }
                    
                    // Add to cart
                    addToCart({
                        id: productId,
                        name: name,
                        price: price,
                        image: images[0],
                        quantity: quantity,
                        size: selectedSize,
                        color: selectedColor
                    });
                    
                    showToast('Product toegevoegd aan winkelmandje');
                    closeProductModal();
                });
            }
            
            // Show modal
            productModal.style.display = 'block';
            document.body.style.overflow = 'hidden';
        }

        function closeProductModal() {
            productModal.style.display = 'none';
            document.body.style.overflow = '';
        }

        // Shopping Cart
        function loadCart() {
            const savedCart = localStorage.getItem('cart');
            if (savedCart) {
                try {
                    cart = JSON.parse(savedCart);
                    updateCartUI();
                } catch (error) {
                    console.error('Error loading cart:', error);
                    cart = [];
                }
            }
        }

        function saveCart() {
            localStorage.setItem('cart', JSON.stringify(cart));
        }

        function addToCart(item) {
            // Check if item already exists in cart
            const existingItemIndex = cart.findIndex(cartItem => 
                cartItem.id === item.id && 
                cartItem.size === item.size && 
                cartItem.color === item.color
            );
            
            if (existingItemIndex !== -1) {
                // Update quantity if item exists
                cart[existingItemIndex].quantity += item.quantity;
            } else {
                // Add new item
                cart.push(item);
            }
            
            saveCart();
            updateCartUI();
        }

        function removeFromCart(index) {
            cart.splice(index, 1);
            saveCart();
            updateCartUI();
        }

        function updateCartQuantity(index, quantity) {
            if (quantity < 1) quantity = 1;
            cart[index].quantity = quantity;
            saveCart();
            updateCartUI();
        }

        function updateCartUI() {
            // Update cart count
            const totalItems = cart.reduce((total, item) => total + item.quantity, 0);
            cartCount.textContent = totalItems;
            
            // Update cart items
            if (cart.length === 0) {
                cartItems.innerHTML = '<div class="cart-empty">Je winkelmandje is leeg</div>';
            } else {
                cartItems.innerHTML = '';
                
                cart.forEach((item, index) => {
                    const cartItem = document.createElement('div');
                    cartItem.className = 'cart-item';
                    
                    cartItem.innerHTML = `
                        <img src="${item.image}" alt="${item.name}" class="cart-item-image">
                        <div class="cart-item-details">
                            <h4 class="cart-item-title">${item.name}</h4>
                            <p class="cart-item-price">${formatPrice(item.price)}</p>
                            ${item.size ? `<p>Maat: ${item.size}</p>` : ''}
                            ${item.color ? `<p>Kleur: ${item.color}</p>` : ''}
                            <div class="cart-item-quantity">
                                <button class="quantity-btn decrease-cart-quantity" data-index="${index}">-</button>
                                <span>${item.quantity}</span>
                                <button class="quantity-btn increase-cart-quantity" data-index="${index}">+</button>
                                <button class="cart-item-remove" data-index="${index}">🗑️</button>
                            </div>
                        </div>
                    `;
                    
                    cartItems.appendChild(cartItem);
                });
                
                // Add event listeners for cart item buttons
                document.querySelectorAll('.decrease-cart-quantity').forEach(button => {
                    button.addEventListener('click', () => {
                        const index = parseInt(button.dataset.index);
                        updateCartQuantity(index, cart[index].quantity - 1);
                    });
                });
                
                document.querySelectorAll('.increase-cart-quantity').forEach(button => {
                    button.addEventListener('click', () => {
                        const index = parseInt(button.dataset.index);
                        updateCartQuantity(index, cart[index].quantity + 1);
                    });
                });
                
                document.querySelectorAll('.cart-item-remove').forEach(button => {
                    button.addEventListener('click', () => {
                        const index = parseInt(button.dataset.index);
                        removeFromCart(index);
                    });
                });
            }
            
            // Update cart total
            const total = cart.reduce((sum, item) => sum + (parseFloat(item.price) * item.quantity), 0);
            cartTotal.textContent = formatPrice(total);
        }

        function openCart() {
            cartSidebar.classList.add('open');
            document.body.style.overflow = 'hidden';
        }

        function closeCartSidebar() {
            cartSidebar.classList.remove('open');
            document.body.style.overflow = '';
        }

        // Mobile Menu
        function openMobileMenu() {
            mobileMenu.classList.add('open');
            document.body.style.overflow = 'hidden';
        }

        function closeMobileMenu() {
            mobileMenu.classList.remove('open');
            document.body.style.overflow = '';
        }

        // Contact Form
        function handleContactForm(e) {
            e.preventDefault();
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const subject = document.getElementById('subject').value;
            const message = document.getElementById('message').value;
            
            // In a real application, you would send this data to a server
            console.log('Contact form submitted:', { name, email, subject, message });
            
            showToast('Bericht verzonden! We nemen zo snel mogelijk contact met je op.');
            e.target.reset();
        }

        // Checkout
        function handleCheckout() {
            if (cart.length === 0) {
                showToast('Je winkelmandje is leeg');
                return;
            }
            
            // In a real application, you would redirect to a checkout page
            showToast('Bedankt voor je bestelling! We gaan deze nu verwerken.');
            cart = [];
            saveCart();
            updateCartUI();
            closeCartSidebar();
        }

        // Event Listeners
        navLinks.forEach(link => {
            link.addEventListener('click', (e) => {
                e.preventDefault();
                const page = link.dataset.page;
                if (page) {
                    navigateTo(page);
                }
            });
        });

        closeModal.addEventListener('click', closeProductModal);
        productModal.addEventListener('click', (event) => {
            if (event.target === productModal) {
                closeProductModal();
            }
        });

        cartButton.addEventListener('click', openCart);
        closeCart.addEventListener('click', closeCartSidebar);
        
        mobileMenuButton.addEventListener('click', openMobileMenu);
        mobileMenuClose.addEventListener('click', closeMobileMenu);
        
        if (contactForm) {
            contactForm.addEventListener('submit', handleContactForm);
        }
        
        if (checkoutBtn) {
            checkoutBtn.addEventListener('click', handleCheckout);
        }

        // Initialize
        document.addEventListener('DOMContentLoaded', () => {
            loadProducts();
            loadFavorites();
            loadRecommendations();
            loadCart();
            
            // Set active nav link based on current page
            navLinks.forEach(link => {
                if (link.dataset.page === currentPage) {
                    link.classList.add('active');
                }
            });
        });
    </script>
</body>
</html>
