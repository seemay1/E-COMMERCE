# 🌸 Fleur Essence - E-commerce UI Project

**Student Name**: Seemay Morte  
**Student ID**: 2023-2110001



## 🛍️ Project Description

**Fleur Essence** is a flower-themed e-commerce mobile app designed to deliver elegant, romantic, and joyful bouquets for any occasion.
The app simulates an online flower store using mock data and Flutter UI elements, offering a full shopping experience — from browsing to checkout — with no backend integration.

The project is built with a strong focus on aesthetics, usability, and smooth navigation, 
tailored specifically to a floral niche that highlights beauty and emotion through design.



## ✨ Implemented Features

### 🌼 1. **Intro Screen**
- **Purpose**: Welcomes users to the app with branding visuals and a transition button.
- **UI Elements**: App logo, tagline, "Get Started" button.

### 🏠 2. **Home Screen**
- **Purpose**: Displays featured flowers and a navigation bar.
- **UI Elements**: AppBar with logo and title, horizontally scrollable category cards, vertical list of featured products.

### 💐 3. **See All Flowers Screen**
- **Purpose**: Lists all flower products available in a scrollable grid format.
- **UI Elements**: Product images and names; clicking leads to details.

### 📄 4. **Product Detail Screen**
- **Purpose**: Shows full details about a selected flower product.
- **UI Elements**: Image, name, description, price, "Add to Cart" button.

### 🛒 5. **Cart Screen**
- **Purpose**: Displays items added to cart with quantity control and delete option.
- **UI Elements**: ListTile layout, subtotal & total, quantity stepper, “Proceed to Checkout” button.

### ✅ 6. **Checkout Screen**
- **Purpose**: Single-page form for entering shipping and payment details.
- **UI Elements**: TextFormFields for address, radio buttons for payment selection, order summary, "Place Order" button.

### 🎉 7. **Order Confirmation Screen**
- **Purpose**: Confirms successful order placement.
- **UI Elements**: Check icon, thank-you message, "Back to Home" button (returns directly to HomePage).

### 📖 8. **Order History Screen**
- **Purpose**: Displays a list of previously ordered bouquets.
- **UI Elements**: ListView of product names with quantity and price, retrieved from in-app history.

### 📜 9. **About Page**
- **Purpose**: Tells users about the brand and provides contact information.
- **UI Elements**: Description, branding text, styled layout, contact info section.



## 🎨 Unique Design Choices & Creativity

### Niche:
- The app is dedicated to flower bouquet sales, emphasizing elegance, softness, and celebration.

### Color Palette:
- Soft pinks, pastels, and floral-inspired tones to align with the romantic and fresh feel of flower shopping.

### Typography:
- Used Flutter’s `TextStyle` with varying weights for hierarchy and a friendly serif/sans-serif combo.

### Iconography:
- Icons are clean and themed (e.g., checkmarks, flowers) to enhance clarity and reinforce purpose.

### Custom UI/UX Features:
- 💚 **Single-page checkout UI** (combines shipping and payment).
- 💗 **Order history feature** (using mock logic to store and retrieve past orders).
- 💫 **Animated intro screen** (optional extension).
- 🧼 Consistent padding, rounded card corners, and elevation for material-like cleanliness.

### 📸 Screenshots (suggested to add):
- Home screen  
- Product detail  
- Cart  
- Checkout  
- Order confirmed  
- About screen  



## 🧠 Challenges Faced & Solutions

### 1. **Managing Cart State Across Screens**
- **Challenge**: Keeping cart data synced across the app.
- **Solution**: Implemented `Provider` to manage cart state globally and notify listeners on changes.

### 2. **Routing and Navigation**
- **Challenge**: Ensuring navigation returns to the correct screen (e.g., avoid returning to IntroPage).
- **Solution**: Used `Navigator.pushNamedAndRemoveUntil` for resetting the stack after checkout to go directly to HomePage.

### 3. **Combining Forms into a Single Checkout Page**
- **Challenge**: Handling multiple inputs on a single screen while maintaining UX clarity.
- **Solution**: Grouped fields with labels and used radio buttons for payment. Validated input before placing an order.



## 📦 Requirements Checklist

- ✅ Mock data only (no backend/database)
- ✅ All required screens implemented
- ✅ Clear and intuitive navigation (Drawer + pushNamed)
- ✅ Custom UI tailored to flower niche
- ✅ Cart, checkout, and order confirmation working
- ✅ Order history using mock logic
- ✅ Well-commented and readable code
