module ApplicationHelper

    def progresso_okr (okr)
            @okr = okr
            contagem = @okr.krs.count
            c = 0
            @okr.krs.each do |i|
                 c = c + i.progress
            end

            if contagem != 0
            progresso = c/contagem
            elsif contagem == 0
            progresso = 0
            end
            progresso
    end
end
