localized = true
default_locale = "la"

include("loremla.jl")


    word()=word_list[rand(1:length(word_list))]
        

    words(nb=3)= [ (word_list[rand(1:length(word_list))]) for i=1:nb ]
 
    sentence( nb_words=6, variable_nb_words=true)= ( nb_words <= 0 && (return " ");
        variable_nb_words && (nb_words = rand(1:nb_words));
        palabras = words(nb_words);
        palabras[1] = ucfirst(palabras[1]);
        sal = join(palabras," ");
        sal*= ".";
        sal)

    sentences( nb=3)= [sentence() for i=0:nb]

    paragraph( nb_sentences=3, variable_nb_sentences=true) =
       (nb_sentences <= 0 && (return " ");
        variable_nb_sentences && (nb_sentences = rand(1:nb_sentences));
        sal = join(sentences(nb_sentences)," ");
        sal*= ".";
        sal)

    paragraphs( nb=3)= [paragraph() for i=1:nb]

    text( max_nb_chars=200)=
      (
        texto = [];
        max_nb_chars < 5 && (return "text() can only generate text of at least 5 characters");
        if max_nb_chars < 25
                size = 0
                while size < max_nb_chars
                    palabra = ( size>0? " " : "") * word();
                    push!(texto, palabra)
                    size += length(palabra)
                end
            texto[1] = ucfirst(texto[1]);
            texto[end] *= "."
 
        elseif max_nb_chars < 100
                size = 0
                while size < max_nb_chars
                    sentencia = (size>0? " " : "") * sentence()
                    push!(texto, sentencia)
                    size += length(sentencia)
                end
        else
                size = 0     
                while size < max_nb_chars
                    parrafo = (size>0? " " : "") * paragraph()
                    push!(texto, parrafo)
                    size += length(parrafo)
                end            
        end ;

        join(texto,"") )
