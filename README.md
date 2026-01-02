📚 [English](English_Readme.md) | [Architecture](ARCHITECTURE.md) |
# architecture_template

> **This repository** provides a sample folder structure and development environment for a solid **MVVM architecture** in Flutter projects.

---

## 📦 Module Folder

The folders under the **Module** directory will contain **submodule packages** to reduce the load on the main project code and provide **modularity**.

### 🔧 Core Package
- Common **business logic** that can be used in any project will be added
- **Tests** for the related logic will be located in this folder

### 🎨 UI Widget Package
- **Atomic widgets** that can be used in any project and on any page within the project will be coded
- Widget-specific **tests** will be located in this folder

---

## 🎯 Feature Folder

### Folder Structure
- Contains `view` and `viewmodel` folders following the **MVVM architecture**
- **Models** will be added to the `model` folder inside the `product` folder

### 🔄 Mixin Usage
- Methods and properties within each **widget** and **class** can be extracted into **mixins** for better distribution