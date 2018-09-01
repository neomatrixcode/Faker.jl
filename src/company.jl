
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

    company_preffixes() = ("Despacho", "Grupo", "Corporativo", "Club",
                         "Industrias", "Laboratorios", "Proyectos")

    company_suffixes() = ("A.C.", "S.A.", "S.A. de C.V.", "S.C.",
        "S. R.L. de C.V.","e Hijos", "y Asociados")


    company_suffix()= executor(data["en"]["faker"]["company"]["suffix"])


    company_prefix() = executor(data["en"]["faker"]["company"]["prefix"])
    company()=executor(data["en"]["faker"]["company"]["name"])

