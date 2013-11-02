# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room_category do

    trait :standard do
      name 'Стандарт'
      description <<-EOS.strip_heredoc
        * Wi-fi
        * Кабельное телевидение
        * Телефон
        * Минибар
        * Электронные замки
        * Средства для личной гигиены
        * Полотенца

        Номер включает две раздельные кровати, туалет, ванну. Завтрак входит в стоимость номера.'
      EOS
    end

    trait :junior do
      name 'Полулюкс'
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
