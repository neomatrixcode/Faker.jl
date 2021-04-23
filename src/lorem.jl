
    word()::String=rand(data["faker"]["lorem"]["words"])

    words(;number_words::Int=3)::Array{String, 1} = map( x -> word(), 1:number_words)

    function sentence(;number_words::Int=6, variable_nb_words::Bool=true)::String
        number_words <= 0 && (return " ");
        variable_nb_words && (number_words = rand(1:number_words));
        palabras::Array{String, 1} = words(number_words=number_words);
        palabras[1] = uppercasefirst(palabras[1]);
        return join(palabras," ")*".";
    end

    sentences(;number_sentences::Int=3)::Array{String, 1} = map( x -> sentence(), 1:number_sentences)

    function paragraph(;number::Int=3, variable_nb_sentences::Bool=true)::String
       number <= 0 && (return " ");
        variable_nb_sentences && (number = rand(1:number));
        return join(sentences(number_sentences=number)," ");
    end

    paragraphs(number::Int=3)::Array{String, 1} = map( x -> paragraph(), 1:number)

    function text(;number_chars::Int=200)::String
        texto::Array{String, 1} = [];
        createtext::Function= paragraph

        if number_chars < 5
            @warn("text() can only generate text of at least 5 characters")
            return " "
        elseif number_chars < 25
            createtext = word
        elseif number_chars < 100
            createtext = sentence
        end

        size::Int = 0
        while size < number_chars
            text = createtext()
            push!(texto, text)
            size += length(text)
        end

        if number_chars < 25
            texto[1] = uppercasefirst(texto[1]);
            texto[end] *= "."
        end

        return join(texto," ")
    end