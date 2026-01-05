## Module
    Bu klasörde alt packageler bulunmakta. Her bir pacakge içerisinde bir geliştirme yapılarak test edilebilirlik kolaylaştırılıyor. Ek olarakta kod dağılımı yapılarak daha sürdürülebilir bir mimari elde ediliyor.

### Common

Bu package içerisinde projenin ikon, lottie, resim ve env değişkenlerinin tutulması düzeni ile onların otomatik kodlarının oluşturulduğu kısım **common** klasörüne aktarılmış oldu.

#### Yeni Asset Ekleme

Yeni bir resim, ikon, lottie veya env variable eklenecek ise:

1. **common/assets** klasörü altına eklenecek
2. İlgili diğer sınıflara eklemeler yapılacak
3. `build.sh` scripti çalıştırılacak