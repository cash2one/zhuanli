import urllib

def urldecode(query):
    d = {}
    a = query.split('&')
    for s in a:
        if s.find('='):
            print s
            k,v = map(urllib.unquote, s.split('='))
            try:
                d[k].append(v)
            except KeyError:
                d[k] = [v]

    return d

if __name__ == '__main__':
    str = """enews=login&ecmsfrom=9&username=zhangdongmao&password=89714942&Submit=%E7%99%BB%E9%99%86"""
    print urldecode(str)["Submit"][0].decode("utf-8").encode("utf8")
