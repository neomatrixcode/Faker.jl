
    function catch_phrase()
        resultado =""
        for word_list in data["en"]["faker"]["company"]["buzzwords"]
            resultado *= executor(word_list)*" "
        end
        resultado
    end

    function bs()
        resultado =""
        for word_list in data["en"]["faker"]["company"]["bs"]
            resultado *= executor(word_list)*" "
        end
        resultado
    end

    company_suffix()= executor(data["en"]["faker"]["company"]["suffix"])

    company_prefix() = executor(data["en"]["faker"]["company"]["prefix"])
    company()=executor(data["en"]["faker"]["company"]["name"])

