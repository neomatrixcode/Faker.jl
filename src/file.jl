
    function mime_type()
        executor(data["en"]["faker"]["file"]["mime_type"])
    end

        #param category: application|audio|image|message|model|multipart|text|video

    function file_extension()
        executor(data["en"]["faker"]["file"]["extension"])
    end

  function file_name( extencion="None")
        #:param extension: file extension

    if extencion == "None"
     extencion = file_extension()
    end

    filename = lexify("????")

    "$(filename).$(extencion)"

    end
