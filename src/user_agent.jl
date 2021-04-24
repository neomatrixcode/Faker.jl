
    const user_agents = [
        "chrome", "firefox", "internet_explorer", "opera", "safari"
    ]

    const windows_platform_tokens = [
        "Windows 95", "Windows 98", "Windows 98; Win 9x 4.90", "Windows CE",
        "Windows NT 4.0", "Windows NT 5.0", "Windows NT 5.01",
        "Windows NT 5.1", "Windows NT 5.2", "Windows NT 6.0", "Windows NT 6.1",
        "Windows NT 6.2"
    ]

    const linux_processors = ["i686", "x86_64"]

    const mac_processors = ["Intel", "PPC", "U; Intel", "U; PPC"]

    const langs = ["en-US", "sl-SI", "it-IT"]

    mac_processor()::String = rand(mac_processors)

    linux_processor()::String = rand(linux_processors)

    user_agent()::String = rand(user_agents)

    windows_platform_token()::String = rand(windows_platform_tokens)

    linux_platform_token()::String = string("X11; Linux", linux_processor())

    mac_platform_token()::String = string("Macintosh; ",mac_processor()," Mac OS X 10_",rand(5:8),"_",rand(0:9))


    function chrome()::String
        saf = string(rand(531:536),rand(0:2))
        platforms::Tuple = (linux_platform_token(),windows_platform_token(),mac_platform_token())

        return string("Mozilla/5.0 " ,"(",rand(platforms),") AppleWebKit/",saf," (KHTML, like Gecko) Chrome/",rand(13:70),".0.",rand(800:899),".0 Safari/",saf)
    end

    function firefox()::String
        ver::Tuple = (
                string("Gecko/",date_time_between()," Firefox/",rand(4:15),".0"),
                string("Gecko/",date_time_between()," Firefox/3.6.", rand(1:20)),
                string("Gecko/",date_time_between()," Firefox/3.8")
        )

        platforms::Tuple = (
            string("(",windows_platform_token(),"; ",rand(langs),"; rv:1.9.",rand(0:2),".20) ",rand(ver)),
            string("(",linux_platform_token(),"; rv:1.9.",rand(5:7),".20) ",rand(ver)),
            string("(",mac_platform_token(),"; rv:1.9.",rand(2:6),".20) ",rand(ver))
        )

        return string("Mozilla/5.0 " , rand(platforms))
    end

   function safari()::String
    saf::String = string(rand(531:535),".",rand(1:50),".",rand(1:7))
    ver::String=""

        if rand(0:1) == 0
            ver = string(rand(4:5),".",rand(0:1))
        else
            ver = string(rand(4:5),".0.",rand(1:5))
        end

        platforms::Tuple = (
        string("(Windows; U; ",windows_platform_token(),") AppleWebKit/",saf," (KHTML, like Gecko) Version/",ver," Safari/",saf),
        string("(",mac_platform_token()," rv:",rand(2:6),".0; ",rand(langs)," AppleWebKit/",saf," (KHTML, like Gecko) Version/",ver," Safari/",saf),
        string("(iPod; U; CPU iPhone OS ",rand(3:4),"_",rand(0:3)," like Mac OS X; ",rand(langs)," AppleWebKit/",saf," (KHTML, like Gecko) Version/",rand(3:4),".0.5 Mobile/8B",rand(111:119)," Safari/6",saf)
        );

        return string("Mozilla/5.0 ", rand(platforms))
    end

    function opera()::String

        platforms::Tuple = ( linux_platform_token(), windows_platform_token())

        return string("Opera/",rand(8:9),".",rand(10:99),".","(",rand(platforms),"; ",rand(langs)," Presto/2.9.",rand(160:190)," Version/",rand(10:12),".00")
    end


    internet_explorer()::String = string("Mozilla/5.0 (compatible; MSIE ",rand(5:9),".0; ",windows_platform_token(),"; Trident/",rand(3:5),".",rand(0:1))

