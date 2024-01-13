local pattern=require("mini.hipatterns")

pattern.setup({
    highlighters={
        hex_color=pattern.gen_highlighter.hex_color();
    }
})
