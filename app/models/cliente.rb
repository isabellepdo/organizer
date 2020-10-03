class Cliente < ApplicationRecord

    has_many :projetos

    def formata_telefone()
        if telefone.present?
            tel_formatado = "("
            tel_formatado << telefone[0..1]
            tel_formatado << ")"
            tel_formatado << telefone[2..5]
            tel_formatado << "-"
            tel_formatado << telefone[6..9]
            tel_formatado
        else
            tel_formatado = "Não informado"
        end
    end

    def formata_celular()
        if celular.present?
            cel_formatado = "("
            cel_formatado << celular[0..1]
            cel_formatado << ")"
            cel_formatado << celular[2..6]
            cel_formatado << "-"
            cel_formatado << celular[7..10]
            cel_formatado
        else
            cel_formatado = "Não informado"
        end
    end

    def formata_doc()
        if !cnpj.nil? 
            if cnpj.length == 14
                cnpj_formatado = cnpj[0..1]
                cnpj_formatado << "."
                cnpj_formatado << cnpj[2..4]
                cnpj_formatado << "."
                cnpj_formatado << celular[5..7]
                cnpj_formatado << "/"
                cnpj_formatado << cnpj[8..11]
                cnpj_formatado << "-"
                cnpj_formatado << celular[12..13]
                cnpj_formatado
            else 
                cnpj_formatado = cnpj[0..2]
                cnpj_formatado << "."
                cnpj_formatado << cnpj[3..5]
                cnpj_formatado << "."
                cnpj_formatado << celular[6..8]
                cnpj_formatado << "-"
                cnpj_formatado << celular[9..10]
                cnpj_formatado
            end
        end
    end

    def formata_cep()
        if cep.present?
            cep_formatado = cep[0..4]
            cep_formatado << "-"
            cep_formatado << celular[5..7]
            cep_formatado
        else
            cep_formatado = "Não informado"
        end
    end
end
