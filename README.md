```markdown
# ✅ Todo App - Flutter

A clean and intuitive task management application built with Flutter. Create, view, and delete tasks
with a smooth swipe-to-delete gesture.

## ✨ Features

- ➕ **Add Tasks** – Create new tasks with a simple text input
- 📋 **Task List** – All tasks displayed in a beautiful card-based list
- 🗑️ **Swipe to Delete** – Remove tasks with a smooth dismissible gesture
- 🔄 **Real-time Updates** – Tasks appear and disappear instantly
- 🎨 **Material Design 3** – Modern, clean interface following Material Design guidelines

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.x or newer)
- Dart SDK (3.x or newer)
- Android Studio / VS Code

### Installation

1. **Clone the repository**

```bash
git clone https://github.com/yourusername/todo_app.git
cd todo_app
```

2. **Get dependencies**

```bash
flutter pub get
```

3. **Run the app**

```bash
flutter run
```

## 📱 UI Components

| Component            | Description                            |
|----------------------|----------------------------------------|
| **AppBar**           | Displays "Todo App" title              |
| **ListView.builder** | Efficiently renders the task list      |
| **Card**             | Each task displayed in a material card |
| **Dismissible**      | Enables swipe-to-delete functionality  |
| **TextField**        | Input field for new tasks              |
| **ElevatedButton**   | Adds new task to the list              |

## 💻 Code Overview

### State Management

```dart
class _TodoPageState extends State<TodoPage> {
  List<String> items = [];
  TextEditingController inputController = TextEditingController();

  // Add task
  setState

  (

  () {
  if (inputController.text.isNotEmpty) {
  items.add(inputController.text);
  inputController.clear();
  }
  });

  // Delete task
  setState(() {
  items.removeAt(index);
  });
}
```

### Swipe to Delete

```dart
Dismissible
(
key: ValueKey(items[index]),
onDismissed: (direction) {
setState(() {
items.removeAt(index);
});
},
child: Card(
child: ListTile(
title: Text(items[index]),
),
)
,
)
```

### Empty State Handling

```dart
items.isEmpty
?
Center
(
child: Text(
"სია ცარიელია",
style: TextStyle(fontSize: 18, color: Colors.grey),
),
)
    : ListView.builder(...
)
```

## 🎯 How It Works

1. **Adding a Task**
    - User types text into the TextField
    - Presses "დამატება" (Add) button
    - Task is added to the `items` list
    - Input field is cleared
    - List updates automatically

2. **Deleting a Task**
    - User swipes a task card left or right
    - `onDismissed` callback triggers
    - Task is removed from the `items` list
    - UI updates instantly

3. **Empty State**
    - When `items` list is empty
    - Shows a friendly "სია ცარიელია" (List is empty) message
    - Disappears when tasks are added

## 🛠️ Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  gap: ^3.0.1  # For spacing between widgets
```

## 📁 Project Structure

```
lib/
├── main.dart          # App entry point
└── todo_page.dart     # Main Todo page UI and logic
```

## 🎨 Customization

### Change App Title

```dart
appBar: AppBar
(
title
:
Text
(
"
Your Custom Title
"
)
,
)
```

### Change Empty State Message

```dart
Text
("Your custom empty message
"
)
```

### Change Button Text

```dart
child: Text
("Add
"
)
,
```

### Add Task Persistence

To save tasks between app restarts, add `shared_preferences`:

```dart
import 'package:shared_preferences/shared_preferences.dart';

// Save tasks
final prefs = await
SharedPreferences.getInstance
();await
prefs.setStringList
('tasks
'
, items);

// Load tasks
items = prefs.getStringList('tasks'
)
??
[
];
```

## 🔮 Future Improvements

- [ ] Edit existing tasks
- [ ] Mark tasks as complete (checkbox)
- [ ] Set due dates for tasks
- [ ] Add priority levels (High, Medium, Low)
- [ ] Categories or tags for tasks
- [ ] Search functionality
- [ ] Dark mode support
- [ ] Local database (Hive or SQLite)
- [ ] Cloud backup and sync

## 📱 Screenshots

| Empty State         | Adding Task             | Task List        | Swipe to Delete            |
|---------------------|-------------------------|------------------|----------------------------|
| Shows empty message | Input field with button | Cards with tasks | Swipe gesture removes task |

## 🧠 Key Learning Points

- ✅ Using `StatefulWidget` for dynamic UI
- ✅ Managing lists with `setState()`
- ✅ Implementing `Dismissible` for swipe actions
- ✅ Using `TextEditingController` for input management
- ✅ Conditional rendering with ternary operators
- ✅ `ListView.builder` for efficient list rendering
- ✅ Empty state handling

## 📄 License

This project is open-source and available for learning purposes.

## 👨‍💻 Author

Created as a demonstration of Flutter development best practices.

---

**Stay Organized! ✅**

```