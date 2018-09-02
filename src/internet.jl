
uri_pages = ["index", "home", "search", "main", "post", "homepage", "category", "register", "login", "faq", "about", "terms","privacy", "author"]
uri_paths = ["app", "main", "wp-content", "search", "category", "tag", "categories", "tags", "blog", "posts", "list", "explore"]
uri_extensions = [".html", ".html", ".html", ".htm", ".htm", ".php", ".php", ".jsp", ".asp"]


pixels()= rand(1:1024)

user_name()= bothify(executor(data["en"]["faker"]["internet"]["user_name_formats"]))

domain_suffix()= executor(data["en"]["faker"]["internet"]["domain_suffix"])
safe_email()= "$(user_name())@example.$(domain_suffix())"

free_email_domain() = executor(data["en"]["faker"]["internet"]["free_email"])
free_email()= "$(user_name())@$(free_email_domain())"



domain_word()=
   ( company_elements = split(company(), [',', ' ','-']);
    sal = "";
    for i in company_elements
               if length(i)>0
                   sal*="$(i[1])"
               end
          end;

    lowercase(sal) )

domain_name()="$(domain_word()).$(domain_suffix())"

company_email()= "$(user_name())@$(domain_name())"

email()= executor(data["en"]["faker"]["internet"]["email_formats"])


url()= executor(data["en"]["faker"]["internet"]["url_formats"])


ipv4()= "$(rand( 172:255)).$(rand( 0:255)).$(rand(0:255)).$(rand(0:255))"

ipv6()= (res = "";
    for i = 1:8
        res*= "$(string(rand( 4100:65535),base=16))"
        if i < 8
            res*= ":"
        end
    end;res)


mac_address()=
    (res = "";
    for i = 1:6
        res*= "$(Base.hex(unsigned(rand( 0x00:0xff)),2,false))"
        i < 6 && (res*= ":")
    end;res)

uri_page()= executor(uri_pages)

uri_path(deep="None")=
    (if deep =="None"
        deep = rand(1:3)
    end; sa="";
        for i =0:deep
           sa*= uri_paths[rand( 1:length(uri_paths))]
            i < deep && (sa*= "/")
        end; sa )

uri_extension()= executor(uri_extensions)
uri()= executor(data["en"]["faker"]["internet"]["uri_formats"])
image_url()= executor(data["en"]["faker"]["internet"]["image_placeholder_services"])