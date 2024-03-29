# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room_category do

    trait :standard do
      name 'Стандарт'
      price 100
      description <<-EOS.strip_heredoc
        * Wi-fi
        * Кабельное телевидение
        * Телефон
        * Минибар
        * Электронные замки
        * Средства для личной гигиены
        * Полотенца

        Номер включает две раздельные кровати, туалет, ванну. Завтрак входит в стоимость номера.
      EOS
    end

    trait :two_rooms do
      name 'Двухкомнатный'
      price 150
      description <<-EOS.strip_heredoc
        Площадь номера 50 кв.м. Номер состоит из спальной комнаты с двухместной кроватью (2,0 м х 1,8 м),
        гостиной, просторной ванной комнаты и уютной зоны кухни. Планировка номера и цветовая гамма,
        использованная при его оформлении, создают комфортные условия для проживания в течение длительного времени.

        Каждый двухкомнатный номер имеет индивидуальный кондиционер, сейф, аппарат для приготовления чая и кофе,
        телефон и спутниковое телевидение. В гостиной имеется просторный рабочий стол, диван, журнальный столик,
        и комфортные кресла.

        Ванная комната оснащена ванной, сушилкой для полотенец и феном. Для гостей приготовлены гигиенические
        принадлежности.
      EOS
    end

    trait :junior do
      name 'Полулюкс'
      price 200
      description <<-EOS.strip_heredoc
        * Wi-fi
        * Кабельное телевидение
        * Телефон
        * Минибар
        * Электронные замки
        * Средства для личной гигиены
        * Полотенца

        Двухкомнатный просторный номер, двухспальная евро кровать, туалет, ванна. Завтрак входит в стоимость номера.
      EOS
    end


    trait :deluxe do
      name 'Люкс'
      price 300
      description <<-EOS.strip_heredoc
        * Wi-fi
        * Кабельное телевидение
        * Телефон
        * Минибар
        * Электронные замки
        * Средства для личной гигиены
        * Полотенца
        * Халаты
        * Фен

        Двухкомнатный просторный номер, двухспальная евро кровать, туалет, ванна. Завтрак входит в стоимость номера.
      EOS
    end

    deluxe
    sequence(:name) { |n| "Люкс #{n}" }

    factory :room_category_with_rooms do
      ignore do
        rooms_count 3
      end
      rooms { rooms_count.times.map { build(:room, category: nil) } }
    end
  end
end
