class ObservacaoDoProjeto < ApplicationRecord
  belongs_to :projeto
  belongs_to :user
end
