cheerio = require("cheerio")

exports.text = (html, count, more_text)->
    if count <= 0
        throw new Error("count must be a negative number")
    if count >= html.length
        return html
    html = html.replace(/<\/?[^>]+>/gi, '\n').trim()
    html = trimEachLine(html)
    res = html.substr(0, count).trim() + (more_text or "")
    return '<p>' + res.replace(/\n/g, '</p><p>') + '</p>'

trimEachLine = (str)->
    res = []
    arr = str.split "\n"
    for line in arr
        t = line.trim()
        res.push(t) if t
    return res.join('\n')
