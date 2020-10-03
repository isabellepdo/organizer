class TarefaDoProjeto < ApplicationRecord
  belongs_to :user
  belongs_to :tarefa
  belongs_to :projeto

  enum status: {
    em_espera: 0,
    iniciada: 1, 
    com_impedimento: 2, 
    finalizada: 3,
    arquivada: 4
  } 

  def status_formatado()
    if status == "iniciada"
      "Iniciado"
    elsif status == "em_espera"
      "Em espera"
    elsif status == "com_impedimento"
      "Com Impedimento"
    elsif status == "finalizada"
      "Finalizado"
    elsif status == "arquivada"
      "Arquivada"
    else
      "Sem Status"
    end
  end

  def prazo_formatado()
    dataf = prazo.strftime("%m/%d/%Y")
  end
end
