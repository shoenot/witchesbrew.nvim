local lush = require("lush")
local hsl = lush.hsl 

local palette = {
    -- background colors
    base = hsl("#11080d"),
    surface = hsl("#11080d").abs_lighten(10),
    overlay = hsl("#11080d").abs_lighten(20),
    -- foreground colors
    text = hsl("#e0ddd8"),  -- increased contrast for readability
    subtle = hsl("#d0cdc8"),
    faint = hsl("#b8b5b0"),  -- new intermediate shade
    muted = hsl("#7a7872"),  -- adjusted for better visibility
    -- term colors
    red = hsl("#da9188"),
    yellow = hsl("#a69481"),
    pink = hsl("#a68295"),
    blue = hsl("#8194a6"),
    green = hsl("#94a681"),
    purple = hsl("#866399"),
    -- new complementary colors
    teal = hsl("#88b5aa"),  -- new accent color
    amber = hsl("#d9956f"),  -- for constants/numbers
    wine = hsl("#8b5a6b"),  -- deeper wine for types
    -- syntax colors
    pinkshade1 = hsl("#ad687d"),
    pinkshade2 = hsl("#7d4c68"),
    pinkshade3 = hsl("#e2adbc"),
    goldshade1 = hsl("#f0ca93"),
    blueshade1 = hsl("#5276b5"),
    -- bright term colors (more vibrant)
    brightred = hsl("#e9a89e").abs_saturate(15),
    brightyellow = hsl("#c9b09a").abs_saturate(15),
    brightpink = hsl("#d4a0b5").abs_saturate(15),
    brightblue = hsl("#a0b4c8").abs_saturate(15),
    brightgreen = hsl("#adc098").abs_saturate(15),
    brightpurple = hsl("#9d7bb0").abs_saturate(15),
    -- highlight colors
    hi_low = hsl("#2e2920"),
    hi_med = hsl("#524a3c"),
    hi_high = hsl("#665e4f"),
    -- diff colors (more saturated)
    diff_add = hsl("#5a7548"),
    diff_del = hsl("#8b4a4a"),
    diff_text = hsl("#4a3d4a"),
    -- semantic colors
    error = hsl("#c85d5d"),
    warning = hsl("#d9a95f"),
    success = hsl("#8eb574"),
}

return palette 
