local theme = require("witchesbrew.theme")
local palette_default = require("witchesbrew.palette")
local palette_bright = require("witchesbrew.palette-bright")
local lushwright = require("shipwright.transform.lush")

-- export default variant to lua
run(
    theme(palette_default),
    lushwright.to_lua,
    { patchwrite, "colors/witchesbrew.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)

-- export bright variant to lua
run(
    theme(palette_bright),
    lushwright.to_lua,
    { patchwrite, "colors/witchesbrew-bright.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)
