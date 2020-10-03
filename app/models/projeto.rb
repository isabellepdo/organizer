class Projeto < ApplicationRecord

    belongs_to :tipo_de_projeto
    belongs_to :cliente

    has_many :observacoes_do_projeto

    enum status: {
        aguardando: 0,
        enviado_orcamento: 1, 
        inciado: 2, 
        finalizado: 3,
        gerado_licitacao: 4,
        em_condicionantes: 5
    } 

    def status_formatado()
        if status == "aguardando"
            statusf = "Aguardando"
        elsif status == "enviado_orcamento"
            statusf = "Orçamento Enviado"
        elsif status == "inciado"
            statusf = "Iniciado"
        elsif status == "finalizado"
            statusf = "Finalizado"
        elsif status == "gerado_licitacao"
            statusf = "Licitação Gerada"
        elsif status == "em_condicionantes"
            statusf = "Em condicionante"
        else
            statusf = "Sem Status"
        end
    end

    def prazo_formatado()
        dataf = prazo.strftime("%m/%d/%Y")
    end

end
