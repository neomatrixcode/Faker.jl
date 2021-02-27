
    function catch_phrase()
        resultado =""
        for word_list in data["faker"]["company"]["buzzwords"]
            resultado *= executor(word_list)*" "
        end
        resultado
    end

    function bs()
        resultado =""
        for word_list in data["faker"]["company"]["bs"]
            resultado *= executor(word_list)*" "
        end
        resultado
    end

    company_suffix()= executor(data["faker"]["company"]["suffix"])

    company_prefix() = executor(data["faker"]["company"]["prefix"])
    company()=executor(data["faker"]["company"]["name"])

