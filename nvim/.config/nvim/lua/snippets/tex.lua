local luasnip = require("luasnip")
local s = luasnip.snippet local t = luasnip.text_node
local i = luasnip.insert_node
local l = require("luasnip.extras").lambda

luasnip.add_snippets("tex", {
    s({ trig = "btheo", namr = "Theorem box", dscr = "Create a theorem box" }, {
        t([[\begin {theorem}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{theorem}]] }),
    }),
    s({ trig = "bcoro", namr = "Corollary box", dscr = "Create a corollary box" }, {
        t([[\begin {corollary}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{corollary}]] }),
    }),
    s({ trig = "blenm", namr = "Lenma box", dscr = "Create a lenma box" }, {
        t([[\begin {lenma}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{lenma}]] }),
    }),
    s({ trig = "bprop", namr = "Proposition box", dscr = "Create a proposition box" }, {
        t([[\begin {proposition}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{proposition}]] }),
    }),
    s({ trig = "bclai", namr = "Claim box", dscr = "Create a claim box" }, {
        t([[\begin {claim}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{claim}]] }),
    }),
    s({ trig = "bexer", namr = "Excercise box", dscr = "Create a excercise box" }, {
        t([[\begin {excercise}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{excercise}]] }),
    }),
    s({ trig = "bexam", namr = "Example box", dscr = "Create a example box" }, {
        t([[\begin {example}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{example}]] }),
    }),
    s({ trig = "bdefi", namr = "Definition box", dscr = "Create a definition box" }, {
        t([[\begin {definition}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{definition}]] }),
    }),
    s({ trig = "bques", namr = "Question box", dscr = "Create a question box" }, {
        t([[\begin {question}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{question}]] }),
    }),
    s({ trig = "bsolu", namr = "Solution box", dscr = "Create a solution box" }, {
        t([[\begin {solution}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{solution}]] }),
    }),
    s({ trig = "bnote", namr = "Note box", dscr = "Create a note box" }, {
        t([[\begin {note}{]]), i(1, "title"), t({ "}{} ", "" }),
        i(0, "context"),
        t({ "", [[\end{note}]] }),
    }),
    s({ trig = "template", namr = "Default latex template", dscr = "Setup a latex document to the default template" }, {
        t({ [[\documentclass[12pt,a4paper]{report}]],
            [[\input{macros.tex}]],
            [[\input{boxes.tex}]], "",
            [[\title{]] }), i(1, "title"), t({ [[}]],
            [[\author{Eise Zimmerman}]], "",
            [[\begin{document}]], "",
            [[\makeatletter]],
            [[\frontpage{\@title}{\@author}{\@date}]],
            [[\makeatother]], "",
            [[\tableofcontents]],
            [[\newpage]], "",
            [[\chapter{]] }), i(2, "chapter"), t({ [[}]],
            [[\section{]] }), i(3, "section"), t({ [[}]], "", "" }),
        i(4, "content"),
        t({ "", "", [[\end{document}]] }),
    })
})

luasnip.add_snippets("lua", {
    s({ trig = "texboxsnip", namr = "LaTeX box snippet", dscr = "Create a LaTeX custom box snippet" }, {
        t({ [[s({ trig = "]] }), i(1, "trig"), t([[", namr = "]]), i(2, "boxname"), t({ [[ box", dscr = "Create a ]] }), l(l._1:lower(), 2), t({ [[ box" }, {]], "" }),
        t({ [[    t([[\begin {]] }), l(l._1:lower(), 2), t({ [==[}{]]), i(1, "title"), t({ "}{} ", "" }),]==], "" }),
        t({ [[    i(0, "context"),]], ""}),
        t({ [[    t({ "", [[\end{]] }), l(l._1:lower(), 2), t({ [==[}]] }),]==], "" }),
        t({ [[}),]] }),
    })
})
