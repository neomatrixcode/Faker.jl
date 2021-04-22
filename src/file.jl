
    function mime_type()::String
        executor(data["faker"]["file"]["mime_type"])
    end
    #param category: application|audio|image|message|model|multipart|text|video

    function file_extension()::String
        executor(data["faker"]["file"]["extension"])
    end

    function file_name(extencion::String="None")::String

        if extencion == "None"
            extencion = file_extension()
        end

        return string(lexify("????"),".",extencion)

    end
