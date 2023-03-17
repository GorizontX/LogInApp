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
            userName: "A",
            password: "1",
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
            aboutMe: """
                    Привет. Меня зовут Андрей, в конце марта мне исполнится 38 лет ♈️.
                    Недавно я переехал жить в Барселону и сейчас начал более активно учить Swift.
                    Обажаю путешествовать (или обожал), объездил почти всю Азию и Европу, но не разу не был на той стороне планеты. Очень люблю спорт, сноуборд, лонгборт и хорошую музыку 👨🏼‍🎤
                    """,
            aboutMyJob:
                """
                    Почти всю жизнь я проработал в свере рекламы, но на стороне не рекламодталей, а площадок.
                    Начал я на телеканале МУЗ ТВ и Disney. Занимался продажей спонсорской рекламы в их телепроекты. Затем меня пригласили работать в online-кинотеарт IVI.RU, где я также занимался размещение спонсорской релкамы, но уже в Digital.
                    Затем случился Газпром Медия и телеканал МАТЧ ТВ – худший опыыт в моей жизни, а затем меня с ханитили в холдин ЭВЕРЕСТ, где я занимался спонсорскими интеграциями на телеканалах СТС, Домашний, РЕНТ ТВ, СТС Love и других площадках.
                    
                    А потом случился весь этот ад и я больше морально не мог там находиться. Взял своего кота, PlayStation и что влезло и начал новую жизнь 😅
                    """,
            aboutMyPet: """
                        В этой новой жизни мне, конечно, помог не сойти с ума мой кот. Я уже переезжал в Барселону, но по собственной воле, а не как сейчас. Всё это, конечно, сопровождалось депрессией, апатией и страхами, но когда он приходит и ложиться рядом - чувствуешь, что ты не совсем один и что надо двигаться вперед, так как такая отственность... хранить этого малыша 😻
                        """
        )
    }
        
}
