//
//  User.swift
//  LogInApp
//
//  Created by Andrey Machulin on 16.03.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    
    
    static func getUser() -> User {
        User(
            userName: "Andrey",
            password: "13579",
            person: Person.getPerson()
        )
    }
    
    //    static func getUser() -> [User] {
    //        [
    //            User(
    //                userName: "Andrey",
    //                password: "13579",
    //                person: Person(
    //                    name: "Andrey",
    //                    surname: "Machulin",
    //                    aboutMe: "About Andrey"
    //                )
    //            ),
    //             User(
    //                userName: "Eugenya",
    //                password: "24680",
    //                person: Person(
    //                    name: "Eugenya",
    //                    surname: "Bruyko",
    //                    aboutMe: "About Eugenya"
    //                )
    //            )
    //        ]
    //    }
    
}

struct Person {
    let name: String
    let surname: String
    let aboutMe: String
    let aboutMyJob: String
    let aboutMyPet: String
    
    var welcomeMessame: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Andrey",
            surname: "Machulin",
            aboutMe:
                    """
                    Мне 38 лет. Я жил в Москве, но, как и у многих, 24.02.2022 всё сильно изменилось, и я понял, что оставаться там у меня нет никаких моральных сил, поэтому к ноябрю я закончил все дела, собрал все документы, кота и PlayStation и переехал в Барселону.
                    Резкий переезд – сложный процесс, который я стараюсь совмещать с этим обучением. Очень надеюсь, что к лету у меня получится начать делать свое приложение и найти первую работу.
                    """,
            aboutMyJob:
                        """
                        Я никогда не был связан с программированием или математикой, поэтому особенно страшно было начинать. Мой карьерный путь сложился вокруг спонсорских интеграций.

                        Я работал на телеканалах: МУЗ ТВ, Disney, Матч ТВ, в холдинге ЭВЕРЕСТ, в который выходят телеканалы СТС, Домашний, РЕН ТВ, СТС Love, Пятый, а также в online-кинотеатре IVI.RU.

                        Везде я продавал проекты этих каналов, интегрировал рекламу, например, в шоу «Фортбоярд», когда стариц Фура рассказывал, как ему помогает мазь «Звездочка» 😎
                        """,
            aboutMyPet:
                        """
                        А это моя Кармическая вторая половинка – кот Ами (по-французский «Друг»).
                        Это какое-то невероятное нежное и доброе создание, которое во мне пробудило безумно теплые чувства вперемешку с чувством заботы – бесконечная любовь.
                        Также он стал невероятным помощником в этом переезде. Чувство страха и одиночество, наверно, всех одолевает, кто уезжает в другую страну, менталитет и т.д., и когда в эти минуты появляется такой друг – хоть какой-то смысл в этом начинает быть 😻
                        """
        )
    }
    
}
