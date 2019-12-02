class Student < ApplicationRecord
  belongs_to :highschool
  belongs_to :testcenter
end
