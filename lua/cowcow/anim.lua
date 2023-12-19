local minianim=require("mini.animate")
local neoscroll=require("neoscroll")

minianim.setup({
    scroll={
        enable=false
    },
    open={
        enable=false
    },
    close={
        enable=false
    }
})

neoscroll.setup({
    hidecursor=false,
    stop_eof=true,
    cursor_scrolls_alone=true,
})
