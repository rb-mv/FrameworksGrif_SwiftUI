//
//  Framework.swift
//  Product 2
//
//  Created by Раджаб Магомедов on 07.03.2025.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    let name:           String
    let imageName:      String
    let urlString:      String
    let description:    String
}


struct MockData {
    
    static let sampleFramework = Framework(name: "Ничего не нашлось",
                                           imageName: "not-found",
                                           urlString: "https://developer.apple.com",
                                           description: "Что-то пошло не так :(\nПробуйте перезагрузить приложение...")
    
    static let frameworks = [
        Framework(name: "App Clips",
                  imageName: "app-clip",
                  urlString: "https://developer.apple.com/app-clips",
                  description: "App Clips — это отличный способ для пользователей быстро получить доступ к возможностям вашего приложения. App Clip — это небольшая часть вашего приложения, которая становится доступной в нужный момент. Они работают быстро и занимают мало места, поэтому пользователь может открыть их мгновенно.\n\nБудь то заказ еды на вынос, аренда самоката или первоначальная настройка нового устройства, пользователи смогут начать и завершить взаимодействие с вашим приложением за считаные секунды. После этого вы можете предложить им загрузить полную версию вашего приложения из App Store."),
        
        Framework(name: "ARKit",
                  imageName: "arkit",
                  urlString: "https://developer.apple.com/augmented-reality/arkit",
                  description: "ARKit 4 представляет совершенно новый API глубины, который позволяет получать детализированную информацию о глубине с LiDAR-сканера на iPhone 12 Pro, iPhone 12 Pro Max и iPad Pro.\n\nФункция Location Anchors использует данные высокой четкости из Apple Maps, чтобы привязывать AR-объекты к конкретным точкам в реальном мире. Поддержка отслеживания лиц теперь доступна на всех устройствах с Apple Neural Engine и фронтальной камерой, позволяя большему количеству пользователей наслаждаться возможностями дополненной реальности в фото и видео."),
        
        Framework(name: "CarPlay",
                  imageName: "carplay",
                  urlString: "https://developer.apple.com/carplay",
                  description: "CarPlay — это умный и безопасный способ использовать ваш iPhone в автомобиле. Он отображает на встроенном экране автомобиля всё, что вам нужно в дороге.\n\nВы можете прокладывать маршруты, совершать звонки, отправлять и получать сообщения, а также слушать музыку, оставаясь сосредоточенным на дороге."),
        
        Framework(name: "Catalyst",
                  imageName: "catalyst",
                  urlString: "https://developer.apple.com/mac-catalyst",
                  description: "Нативные приложения для Mac, созданные с помощью Mac Catalyst, могут использовать код iPad-приложений, а также добавлять эксклюзивные функции для macOS. В macOS Big Sur вы можете создавать ещё более мощные версии ваших приложений и использовать все пиксели экрана, запуская их в родном разрешении Mac.\n\nПриложения, созданные с помощью Mac Catalyst, теперь могут полностью управляться с клавиатуры, получать доступ к большему количеству iOS-фреймворков и использовать обновлённый интерфейс macOS Big Sur. Никогда ещё не было лучшего времени, чтобы адаптировать iPad-приложение для Mac."),
        
        Framework(name: "ClassKit",
                  imageName: "classkit",
                  urlString: "https://developer.apple.com/classkit",
                  description: "Множество замечательных образовательных приложений из App Store стали неотъемлемой частью учебного процесса в школах. С интеграцией ClassKit ваше приложение будет работать с Schoolwork — мощным инструментом для учителей и учеников, который помогает отслеживать задания и успеваемость.\n\nВы можете помочь учителям находить назначаемые активности в вашем приложении, мгновенно отправлять учеников к нужному заданию и безопасно делиться данными о прогрессе для персонализированного обучения."),
        
        Framework(name: "CloudKit",
                  imageName: "cloudkit",
                  urlString: "https://developer.apple.com/icloud/cloudkit",
                  description: "Храните данные вашего приложения в iCloud и синхронизируйте их между устройствами и веб-приложениями с помощью CloudKit JS. CloudKit предоставляет до 1 ПБ бесплатного хранилища для каждого приложения, что значительно упрощает разработку и масштабирование."),
        
        Framework(name: "Core ML",
                  imageName: "coreml",
                  urlString: "https://developer.apple.com/machine-learning",
                  description: "Создавайте интеллектуальные функции и добавляйте новые возможности в ваши приложения, используя мощные технологии машинного обучения прямо на устройстве.\n\nИзучите процесс создания, обучения и развёртывания моделей машинного обучения для iPhone, iPad, Apple Watch и Mac."),
        
        Framework(name: "HealthKit",
                  imageName: "healthkit",
                  urlString: "https://developer.apple.com/health-fitness",
                  description: "Интегрируйте HealthKit в свои приложения для здоровья и фитнеса на iOS и watchOS, чтобы создать более удобный пользовательский опыт.\n\nКогда пользователь даёт разрешение вашему приложению на чтение и запись данных о здоровье и активности, оно становится ценным источником информации, способным предоставить персонализированные рекомендации."),
        
        Framework(name: "Metal",
                  imageName: "metal",
                  urlString: "https://developer.apple.com/metal",
                  description: "Metal обеспечивает почти прямой доступ к графическому процессору (GPU), позволяя максимально раскрыть потенциал графики и вычислений в приложениях для iOS, macOS и tvOS.\n\nMetal предлагает низкоуровневую архитектуру с предварительно компилируемыми шейдерами, управлением ресурсами и поддержкой многопоточности, что упрощает создание команд для GPU и позволяет использовать мощь Mac Pro и Pro Display XDR."),
        
        Framework(name: "SF Symbols",
                  imageName: "sf-symbols",
                  urlString: "https://developer.apple.com/sf-symbols",
                  description: "SF Symbols включает более 2400 настраиваемых значков, идеально сочетающихся со шрифтом San Francisco, используемым на платформах Apple. Каждый значок поддерживает разные стили и размеры, автоматически подстраиваясь под текстовые метки и работая с Dynamic Type и режимом Bold Text.\n\nВы также можете экспортировать значки и редактировать их в векторных графических редакторах, создавая кастомные символы с общей эстетикой и поддержкой доступности."),
        
        Framework(name: "SiriKit",
                  imageName: "sirikit",
                  urlString: "https://developer.apple.com/siri",
                  description: "Siri — самый популярный интеллектуальный помощник в мире, а теперь он получил новый компактный дизайн. С помощью SiriKit и Shortcuts ваши приложения могут выполнять команды голосом, предлагать интеллектуальные рекомендации и взаимодействовать через приложение Shortcuts.\n\nВаши приложения теперь могут интегрироваться с новыми платформами, включая Shortcuts на watchOS 7, SiriKit Music на HomePod и SiriKit Media на Apple TV."),
        
        Framework(name: "SpriteKit",
                  imageName: "spritekit",
                  urlString: "https://developer.apple.com/spritekit",
                  description: "SpriteKit упрощает создание высокопроизводительных и энергоэффективных 2D-игр.\n\nБлагодаря поддержке кастомных OpenGL ES-шейдеров, освещения, интеграции с SceneKit и передовым физическим эффектам и анимациям, вы можете добавлять силовые поля, обнаруживать столкновения и создавать новые эффекты освещения в ваших играх."),
        
        Framework(name: "SwiftUI",
                  imageName: "swiftui",
                  urlString: "https://developer.apple.com/xcode/swiftui",
                  description: "SwiftUI — инновационный и предельно простой способ создания пользовательских интерфейсов для всех платформ Apple с использованием Swift. Разрабатывайте UI для любого устройства Apple, используя единый набор инструментов и API.\n\nSwiftUI предлагает декларативный синтаксис, который легко читается и естественно пишется, а также автоматически поддерживает Dynamic Type, тёмный режим, локализацию и доступность."),
        
        Framework(name: "Test Flight",
                  imageName: "test-flight",
                  urlString: "https://developer.apple.com/testflight",
                  description: "TestFlight упрощает тестирование приложений и сбор отзывов перед выпуском в App Store.\n\nВы можете пригласить до 10 000 тестировщиков, используя их email или поделившись публичной ссылкой."),
        
        Framework(name: "Wallet",
                  imageName: "wallet",
                  urlString: "https://developer.apple.com/wallet/get-started",
                  description: "Wallet позволяет пользователям управлять банковскими картами, посадочными талонами, билетами и купонами прямо с iPhone и Apple Watch."),
]

}
