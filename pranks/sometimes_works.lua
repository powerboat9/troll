--Install protection of _G and metatables
local protectedData {
    os = {
        pullEventRaw = os.pullEventRaw
    }
    rawset = rawset
    rawget = rawget
    setmetatable = setmetatable
    getmetatable = getmetatable
    ipairs = ipairs
}

os.pullEventRaw = nil
rawset = nil
rawget = nil
setmetatable = nil
getmetatable = nil
ipairs = nil

_G.os.pullEventRaw = function(...)
    while true do
        local eventData = {coroutine.yield()}
        local numb = math.random()
        local 

local protectedKey = {}
local hxedMeta = {
    shouldBeMeta = nil
    shouldBe = nil
    __newindex = function(t, k, v)
        if (t == _G.os) and (k == "pullEventRaw") then
            if protectedData.getmetatable(t).shouldBe == nil then
                protectedData.getmetatable(t).shouldBe = {}
            end
            protectedData.getmetatable(t).shouldBe[k] = v
