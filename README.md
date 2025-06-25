# 🛍️ ecommercedash – Flutter eCommerce Admin Dashboard

A modern and responsive **Flutter dashboard** designed for eCommerce administrators to manage their product listings. This project allows admins to add and update product details like **name, description, price, code, and image**, with cloud storage support via **Firebase** and **Supabase**.

---

## 📸 Screenshot

![Dashboard Preview](https://mzpojccuomgvdwnydyvf.supabase.co/storage/v1/object/public/fruits-images/images/1000139627.jpg)

---

## 🚀 Key Features

✅ **Add / Edit / Delete Products**  
✅ Fields: `Name`, `Description`, `Price`, `Code`, `Image`, and more  
✅ **Store product images** using:
- 🔥 Firebase Storage
- 🐘 Supabase Storage (toggle support)

✅ **Save product data** in Firebase Firestore  
✅ Modern, clean UI with `skeletonizer` loading effect  
✅ Clean Architecture & BLoC pattern  
✅ State management with `flutter_bloc`  
✅ Image selection using `image_picker`  
✅ Environment configuration using `.env` files  

---

## 🧱 Tech Stack

| Tech | Description |
|------|-------------|
| **Flutter** | UI toolkit for cross-platform apps |
| **Firebase Firestore** | Stores all product data |
| **Firebase Storage / Supabase Storage** | Cloud storage for product images |
| **BLoC** | State management |
| **GetIt** | Dependency injection |
| **Dartz** | Functional programming support |
| **Skeletonizer** | Displays skeleton loading widgets |
| **Flutter Dotenv** | Manages API keys securely |
| **Image Picker** | Select product images from gallery or camera |

---

## 🛠️ Getting Started

### 🔧 1. Clone the Repository

```bash
git clone https://github.com/your-username/ecommercedash.git
cd ecommercedash
