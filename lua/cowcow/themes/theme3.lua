local lush=require('lush')
local hsl=lush.hsl

local colors={
    fg=hsl('#fefdfc'),
    bg=hsl('#04171d'),
    normals={
        gray=hsl('#032c36'),
        red=hsl('#d13434'),
        green=hsl('#6ab791'),
        yellow=hsl('#7f705b'),
        blue=hsl('#1697b1'),
        magenta=hsl('#ff5879'),
        cyan=hsl('#2fb0ab'),
        white=hsl('#f3f2e7'),
    },
    brights={
        gray=hsl('#055567'),
        red=hsl('#ef5847'),
        green=hsl('#8ed9a2'),
        yellow=hsl('#bcae8f'),
        blue=hsl('#45bad2'),
        magenta=hsl('ff99a1'),
        cyan=hsl('#79e4e3'),
        white=hsl('#fffff4'),
    },
}

local theme=lush(function()
    return{

    }
end)

return theme
