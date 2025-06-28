# TaskOrdersRate

A Flutter application to manage and review customer orders. This project is part of a skills assessment task for a job application.

## 📝 Project Description

**TaskOrdersRate** allows users to:
- View different types of orders: waiting, active, and completed.
- See detailed order information.
- Submit ratings and comments for completed orders, including separate evaluations for products, the seller, and the delivery company.

## 🚀 Getting Started

To run the project on your local machine:

### 1. Clone the repository:
```bash
git clone https://github.com/MonierAnas10/task-orders-rates.git
cd taskordersrate


🧱 Architecture Used: MVC (Model - View - Controller)

This project is built using the MVC architecture, which organizes the app into three main layers:

🔹 Model

Handles the data structures and business logic.

You’ll find model classes like:

OrderModel

OrderItemModel

RatingSection

📁 Location:lib/features/order/model/

🔹 View

Responsible for the user interface and presentation logic.

Includes screens and UI components such as:

OrderScreen (with tabbed orders)

CompletedOrderDetailsScreen

RatingBottomSheet

📁 Location:lib/features/order/presentation/

🔹 Controller

Acts as the bridge between Model and View.Handles:

User interactions

Input validation

Updating the app state (like submitting reviews)

📁 Location:Usually defined within widgets or separated logically.

✅ Why MVC?

Using MVC makes the code:

Clean and well-structured

Easy to scale and maintain

More testable and modular