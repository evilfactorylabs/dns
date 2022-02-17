-- primary NS
ns(_a, "ns1.luadns.net")
ns(_a, "ns2.luadns.net")
ns(_a, "ns3.luadns.net")
ns(_a, "ns4.luadns.net")

-- A records
a(_a, "174.138.16.134")
a("www", "174.138.16.134")

-- CNAME (vercel)
cname("about", "cname.vercel-dns.com")
cname("handbook", "cname.vercel-dns.com")

-- CNAME (mailgun)
cname("email.mg", "eu.mailgun.org")

-- CNAME (migadu)
cname("key1._domainkey", "key1.evilfactorylabs.org._domainkey.migadu.com")
cname("key2._domainkey", "key2.evilfactorylabs.org._domainkey.migadu.com")
cname("key3._domainkey", "key3.evilfactorylabs.org._domainkey.migadu.com")

-- CNAME (github pages)
cname("resources", "evilfactorylabs.github.io")

-- MX migadu
mx(_a, "aspmx1.migadu.com", 10)
mx(_a, "aspmx2.migadu.com", 20)

-- MX mailgun
mx("mg", "mxa.eu.mailgun.org", 10)
mx("mg", "mxb.eu.mailgun.org", 10)

-- TXT
txt(_a, "v=spf1 include:spf.migadu.com -all")
txt(_a, "hosted-email-verify=f8hrl46d")

txt("mg", "v=spf1 include:mailgun.org ~all")

txt("_dmarc", "v=DMARC1; p=quarantine;")
txt("_github-challenge-evilfactorylabs", "43cafecc15")
txt("mta._domainkey.mg", "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDE2EiU3PrqyJsZfz1MM+LRKTqy9tkjCeVeqY8pZjbOskZ/QdBQI308l1i7i2AQ16GvJK16NgnyT/g+kcCwFHLt5rmh4h/1jyO/Jl6Q+s9Sfqgo3RMZc9jQ5I+6hwU47wU1zLrvrPefuGCwF+sCvFvRBS80fQP15GTAoSuiZN4LyQIDAQAB")
