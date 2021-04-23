
const uri_pages = ["index", "home", "search", "main", "post", "homepage", "category", "register", "login", "faq", "about", "terms","privacy", "author"]
const uri_paths = ["app", "main", "wp-content", "search", "category", "tag", "categories", "tags", "blog", "posts", "list", "explore"]
const uri_extensions = [".html", ".html", ".html", ".htm", ".htm", ".php", ".php", ".jsp", ".asp"]

pixels()::Int = rand(1:1024)
user_name()::String = bothify(executor(data["faker"]["internet"]["user_name_formats"]))
domain_suffix()::String = executor(data["faker"]["internet"]["domain_suffix"])
safe_email(items::Tuple=(user_name(),"@example.", domain_suffix()))::String = reduce(string, items)
free_email_domain()::String = executor(data["faker"]["internet"]["free_email"])
free_email(items::Tuple=(user_name(),"@",free_email_domain()))::String = reduce(string, items)
domain_word()::String = lowercase(join(map( x -> length(x)>0 ? x[1] : "" , split(Faker.company(), [',', ' ','-'])),""))
domain_name(items::Tuple=(domain_word(),".",domain_suffix()))::String = reduce(string, items)
company_email(items::Tuple=(user_name(),"@",domain_name()))::String = reduce(string, items)

email()::String = executor(data["faker"]["internet"]["email_formats"])
url()::String = executor(data["faker"]["internet"]["url_formats"])

ipv4()::String = string(rand( 172:255),".",rand( 0:255),".",rand(0:255),".",rand(0:255))
ipv6()::String = join(map( x -> string(rand(4100:65535),base=16) ,1:8), ":")
mac_address()::String = join(map( x -> string(Base.hex(unsigned(rand( 0x00:0xff)),2,false)) ,1:6), ":")
uri_page()::String = rand(uri_pages)

uri_path(;deep::Int=0)::String =
    (if deep == 0
        deep = rand(1:3)
    end;
    return join(map( x -> string(rand(uri_paths)) , 0:deep), "/") )

uri_extension()::String = rand(uri_extensions)
uri()::String = executor(data["faker"]["internet"]["uri_formats"])
image_url()::String = executor(data["faker"]["internet"]["image_placeholder_services"])