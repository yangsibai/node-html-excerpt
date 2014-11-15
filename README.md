##node-html-excerpt

Get html excerpt by node.

###Get started

    npm install html-excerpt

###Usage

    var excerpt = require("excerpt");
    var html = "<div><p>a paragraph</p><span>a test span</span><p>second paragraph</p></div>";
    var result = excerpt.text(html, 20, '...');
    console.log(result); // output: <p>a paragraph</p><p>a test s...</p>
