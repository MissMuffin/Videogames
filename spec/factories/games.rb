# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  
  factory :colossus, class: Games do
    title "Shadow of the Colossus"
    studio "Team ICO"
    comment "awesome game"
    stars 5
  end

  factory :mass, class: Games do
    title "Mass Effect 2"
    studio "Bioware"
    comment "keine Spoiler zum dritten Teil"
    stars 5
  end

  factory :sims, class: Games do
    title "Sims 3"
    studio "EA Games"
    comment "äh...hahahaha...Vorsicht! Macht süchtig"
    stars 4
  end

end
