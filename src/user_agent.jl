
    user_agents = (
        "chrome", "firefox", "internet_explorer", "opera", "safari",
    )

    windows_platform_tokens = (
        "Windows 95", "Windows 98", "Windows 98; Win 9x 4.90", "Windows CE",
        "Windows NT 4.0", "Windows NT 5.0", "Windows NT 5.01",
        "Windows NT 5.1", "Windows NT 5.2", "Windows NT 6.0", "Windows NT 6.1",
        "Windows NT 6.2",
    )

    linux_processors = ("i686", "x86_64",)

    mac_processors = ("Intel", "PPC", "U; Intel", "U; PPC",)

    langs = ("en-US", "sl-SI", "it-IT")

    mac_processor()= mac_processors[rand(1:length(mac_processors))]

    linux_processor()= linux_processors[rand(1:length(linux_processors))]

    user_agent()= user_agents[rand(1:length(user_agents))]

    windows_platform_token()= windows_platform_tokens[rand(1:length(windows_platform_tokens))]


    linux_platform_token()= "X11; Linux $(linux_processors[rand(1:length(linux_processors))])"
        

    mac_platform_token()= "Macintosh; $(mac_processors[rand(1:length(mac_processors))]) Mac OS X 10_$(rand(5:8))_$(rand(0:9))"
            

    chrome()=
    (
        saf = "$(rand(531:536))" * "$(rand(0:2))";
        platforms = (
            "($(linux_platform_token())) AppleWebKit/$(saf) (KHTML, like Gecko) Chrome/$(rand(13:15)).0.$(rand(800:899)).0 Safari/$(saf)",
            "($(windows_platform_token())) AppleWebKit/$(saf) (KHTML, like Gecko) Chrome/$(rand(13:15)).0.$(rand(800:899)).0 Safari/$(saf)",
            "($(mac_platform_token())) AppleWebKit/$(saf) (KHTML, like Gecko) Chrome/$(rand(13:15)).0.$(rand(800:899)).0 Safari/$(saf)"
        );

        return "Mozilla/5.0 " * platforms[rand(1:length(platforms))]
    )

    firefox()=
    (ver = (
            "Gecko/$(date_time_between()) Firefox/$(rand(4:15)).0",
            "Gecko/$(date_time_between()) Firefox/3.6.$( rand(1:20))",
            "Gecko/$(date_time_between()) Firefox/3.8"
        );
       
        platforms = (
         "($(windows_platform_token()); $(langs[rand(1:length(langs))]); rv:1.9.$(rand(0:2)).20) $(ver[rand(1:length(ver))])",
        "($(linux_platform_token()); rv:1.9.$(rand(5:7)).20) $(ver[rand(1:length(ver))])",
        "($(mac_platform_token()); rv:1.9.$(rand(2:6)).20) $(ver[rand(1:length(ver))])"
        );

        return "Mozilla/5.0 " * platforms[rand(1:length(platforms))])
        
   safari()=
    (saf = "$(rand(531:535)).$(rand(1:50)).$(rand(1:7))";
        if rand(0:1) == 0
            ver = "$(rand(4:5)).$(rand(0:1))"
        else
            ver = "$(rand(4:5)).0.$(rand(1:5))"
        end ;

       
        platforms = (
        "(Windows; U; $(windows_platform_token())) AppleWebKit/$(saf) (KHTML, like Gecko) Version/$(ver) Safari/$(saf)",
        "($(mac_platform_token()) rv:$(rand(2:6)).0; $(langs[rand(1:length(langs))])) AppleWebKit/$(saf) (KHTML, like Gecko) Version/$(ver) Safari/$(saf)",
        "(iPod; U; CPU iPhone OS $(rand(3:4))_$(rand(0:3)) like Mac OS X; $(langs[rand(1:length(langs))])) AppleWebKit/$(saf) (KHTML, like Gecko) Version/$(rand(3:4)).0.5 Mobile/8B$(rand(111:119)) Safari/6$(saf)"
        );

        return "Mozilla/5.0 " * platforms[rand(1:length(platforms))]
    )
        
    opera()=
    (
        platforms = ( "($(linux_platform_token()); $(langs[rand(1:length(langs))])) Presto/2.9.$(rand(160:190)) Version/$(rand(10:12)).00" ,
         "($(windows_platform_token()); $(langs[rand(1:length(langs))])) Presto/2.9.$(rand(160:190)) Version/$(rand(10:12)).00" 
        );
        return "Opera/$(rand(8:9)).$(rand(10:99)).$(platforms[rand(1:length(platforms))]))"
    )
                                        

    internet_explorer()= "Mozilla/5.0 (compatible; MSIE $(rand(5:9)).0; $(windows_platform_token()); Trident/$(rand(3:5)).$(rand(0:1)))"

    