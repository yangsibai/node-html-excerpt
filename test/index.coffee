cutter = require("../src/index")
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
       res = cutter.cut(html, 20)
       console.log res
       res.should.be.a.String
