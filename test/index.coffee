excerpt = require("../src/index")
should = require("should")

describe "html cut test", ->
    it "should convert", ->
       html = """
            <div>
                <img src='http://file.mockplus.cn/avatar/11.jpg'/>
                <p>test
                    <span>a span</span>
                </p>
                <div>
                    <p>test for html cut</p>
                </div>
            </div>
            """
       res = excerpt.text(html, 20)
       res.should.be.a.String
    it "should convert 2", ->
        html = "<div><p>a paragraph</p><span>a test span</span><p>second paragraph</p></div>"
        res = excerpt.text(html, 20, "...")
        res.should.be.a.String
