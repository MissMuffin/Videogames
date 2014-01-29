# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :colossus, class: Game do
    title "Shadow of the Colossus"
    studio "Team ICO"
    comment "awesome game"
    stars 5
  end

  factory :mass, class: Game do
    title "Mass Effect 2"
    studio "Bioware"
    comment "keine Spoiler zum dritten Teil"
    stars 5
  end

  factory :sims, class: Game do
    title "Sims 3"
    studio "EA Games"
    comment "aeh...hahahaha...Vorsicht! Macht suechtig"
    stars 4
  end

end
