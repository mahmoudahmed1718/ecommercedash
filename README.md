# 🛒 ecommercedash – Flutter + Firebase + Supabase

A powerful **eCommerce admin dashboard** built with **Flutter**, using **Firebase Firestore** to store product data and support for **Firebase Storage** or **Supabase Storage** for product images. Designed to help admins manage products easily without needing a backend server.

---

## 🌟 Key Features

✅ **Product Management**  
Add, update, delete products with the following fields:
- 🏷️ Name
- 📝 Description
- 💲 Price
- 🆔 Product Code
- 🖼️ Image
- ➕ Additional customizable fields

📦 **Storage Switching**  
Switch between:
- 🔥 Firebase Storage  
- 🐘 Supabase Storage

🗃️ **Cloud Firestore Integration**  
All product data is stored securely and instantly synced using Firebase Firestore.

🖼️ **Image Picker Integration**  
Pick product images from gallery or camera using `image_picker`.

⏳ **Skeleton Loading UI**  
Smooth skeleton screen experience with `skeletonizer`.

🔐 **Environment Setup**  
Store your API keys securely with `.env` and `flutter_dotenv`.

🧱 **Clean Architecture**  
Organized with domain, data, and presentation layers using `flutter_bloc` and `get_it`.

---

## 🧰 Tech Stack & Packages

### 🔹 Firebase & Supabase
- `firebase_core`, `cloud_firestore`, `firebase_storage`, `supabase_flutter`

### 🔹 State Management
- `bloc`, `flutter_bloc`, `dartz`, `get_it`

### 🔹 UI & UX
- `skeletonizer`, `image_picker`, `modal_progress_hud_nsn`

### 🔹 Configuration
- `flutter_dotenv`, `.env` file

---

## 📷 Screenshot

![Dashboard Preview](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME/blob/main/assets/images/dashboard_preview.jpg?raw=true)

> Replace this URL after uploading your image to GitHub

---

## 🚀 Getting Started

```bash
git clone https://github.com/mahmudahmed1718/ecommercedash.git
cd ecommercedash
flutter pub get
