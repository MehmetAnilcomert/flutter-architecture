# architecture_template

--> Bu repository Flutter ile proje geliştirmede sağlam bir MVVM mimarisi için örnek klasörleme ve geliştirme ortamı sağlayacak projedir.

--> Module klasörü altında bulunan klasörlerde submodule package`lar ile projenin ana kısmındaki kodların ağırlığı azaltılabilecek ve modülerlik sağlanacak.
    --> Core package içerisine her projede kullanılabilecek ortak business logicler eklenecek. İlgili logicler için testlerde o klasörlerde yer alacak.

    --> UI widget package içerisine her projede ve proje içindeki her sayfada kullanılabilecek atomik widgetlar kodlanacak. Bu sayede onlara özel testlerde o klasörde yer alacak. 


