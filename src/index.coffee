cheerio = require("cheerio")

exports.cut = (html, count, more_text)->
    if count <= 0
        throw new Error("count must be a negative number")
    if count >= html.length
        return html
    html = html.replace(/<\/?[^>]+>/gi, '').trim()
    res = html.substr(0, count) + (more_text or "")
    return res.replace(/\n+/g, '<br />')
