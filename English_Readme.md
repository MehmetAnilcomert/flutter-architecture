
# architecture_template

> **This repository** provides a sample folder structure and development environment for a robust **MVVM architecture** in Flutter project development.

---

## 📦 Module Folder

The folders under the **Module** directory contain **submodule packages** that reduce the code weight in the main part of the project and provide **modularity**.

### 🔧 Core Package
- **Common business logic** that can be used in every project will be added
- **Tests** for the related logic will be located in this folder

### 🎨 UI Widget Package
- **Atomic widgets** that can be used in every project and on every page within the project will be coded
- Widget-specific **tests** will be located in this folder

---

## 🎯 Feature Folder

### Folder Structure
- Contains `view` and `viewmodel` folders of the **MVVM architecture**
- **Models** will be added to the `model` folder inside the `product` folder

### 🔄 Mixin Usage
- Methods and properties within every **widget** and **class** can be moved into **mixins** for distribution purposes
