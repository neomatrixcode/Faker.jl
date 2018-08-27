
    word()=executor(data["en"]["faker"]["lorem"]["words"])

    words(;number_words=3::Int)= [ (executor(data["en"]["faker"]["lorem"]["words"])) for i=1:number_words ]

    function sentence(;number_words=6::Int, variable_nb_words=true)
        number_words <= 0 && (return " ");
        variable_nb_words && (number_words = rand(1:number_words));
        palabras = words(number_words=number_words);
        palabras[1] = uppercasefirst(palabras[1]);
        sal = join(palabras," ");
        sal*= ".";
        sal
    end
    sentences(;number_sentences=3::Int) = [sentence() for i=0:number_sentences]

    function paragraph(;number=3::Int, variable_nb_sentences=true)
       number <= 0 && (return " ");
        variable_nb_sentences && (number = rand(1:number));
        sal = join(sentences(number_sentences=number)," ");
        sal*= ".";
        sal
    end
    paragraphs(number=3::Int)= [paragraph() for i=1:number]

    function text(;number_chars=200::Int)
        texto = [];
        number_chars < 5 && (return "text() can only generate text of at least 5 characters");
        if number_chars < 25
                size = 0
                while size < number_chars
                    palabra = ( (size > 0) ? " " : "") * word();
                    push!(texto, palabra)
                    size += length(palabra)
                end
            texto[1] = first(texto[1]);
            texto[end] *= "."

        elseif number_chars < 100
                size = 0
                while size < number_chars
                    sentencia = ((size > 0) ? " " : "") * sentence()
                    push!(texto, sentencia)
                    size += length(sentencia)
                end
        else
                size = 0
                while size < number_chars
                    parrafo = ((size > 0) ? " " : "") * paragraph()
                    push!(texto, parrafo)
                    size += length(parrafo)
                end
        end ;

        join(texto,"")
    end