📚 [English](English_Readme.md) | [Module Yönetimi](code_gen_readme.md) |
# architecture_template

> **Bu repository**, Flutter ile proje geliştirmede sağlam bir **MVVM mimarisi** için örnek klasörleme ve geliştirme ortamı sağlayacak projedir.

---

## 📦 Module Klasörü

**Module** klasörü altında bulunan klasörlerde **submodule package'lar** ile projenin ana kısmındaki kodların ağırlığı azaltılabilecek ve **modülerlik** sağlanacak.

### 🔧 Core Package
- Her projede kullanılabilecek **ortak business logicler** eklenecek
- İlgili logicler için **testler** bu klasörde yer alacak

### 🎨 UI Widget Package
- Her projede ve proje içindeki her sayfada kullanılabilecek **atomik widget'lar** kodlanacak
- Widget'lara özel **testler** bu klasörde yer alacak

---

## 🎯 Feature Klasörü

### Klasörleme Yapısı
- **MVVM mimarisinin** `view` ve `viewmodel` klasörleri bulunmakta
- **Modeller**, `product` klasörü içerisindeki `model` klasörüne eklenecek

### 🔄 Mixin Kullanımı
- Yazılacak her **widget** ve **class** içerisindeki metot ve özellikler dağıtabilmek adına **mixin** içerisine kaydırılabilecek