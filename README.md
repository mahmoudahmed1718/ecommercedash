# 🛍️ ecommercedash – Flutter Admin Dashboard for eCommerce

A professional and modern **Flutter dashboard app** that allows admins to manage eCommerce products by adding **name, description, price, code, image**, and other fields. It stores data in **Firestore**, and product images in either **Firebase Storage** or **Supabase Storage**, with the ability to switch between them.

---

## 📸 Screenshot

![Dashboard Preview](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME/blob/main/assets/images/dashboard_preview.jpg?raw=true)

> Replace the URL above after uploading your image to GitHub.

---

## 🚀 Key Features

- 🧾 **Product Management** — Add, edit, delete products  
- 📄 Fields: `Name`, `Description`, `Price`, `Code`, `Image`, etc.  
- ☁️ **Firebase Firestore** — Store product data  
- 🖼️ **Cloud Storage** — Use Firebase Storage or Supabase Storage for images  
- 🔀 **Switch Between Storage Providers**  
- 🧱 **Clean Architecture** with Domain, Data, and Presentation layers  
- 📦 **State Management** with BLoC  
- 🦴 **Skeleton Loading** with `skeletonizer`  
- 📲 **Image Picker** to upload product photos  
- 🔐 **.env Configuration** for secure API keys

---

## 🧱 Tech Stack

| Tool/Package        | Purpose                         |
|---------------------|----------------------------------|
| Flutter             | UI framework                    |
| Firebase Core       | Firebase integration            |
| Firebase Firestore  | Store product details           |
| Firebase Storage    | Store product images            |
| Supabase Storage    | Alternative image storage       |
| flutter_bloc / bloc | State management                |
| dartz               | Functional programming          |
| get_it              | Dependency injection            |
| skeletonizer        | Beautiful loading placeholders  |
| flutter_dotenv      | API key & environment handling  |
| image_picker        | Select product images           |

---

## 🛠️ Getting Started

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/ecommercedash.git
cd ecommercedash
