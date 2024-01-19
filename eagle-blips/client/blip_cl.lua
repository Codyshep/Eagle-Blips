local blips = config.blips

for _, blipcfg in ipairs(blips) do 
    local blip = AddBlipForCoord(blipcfg.coords)
    SetBlipSprite(blip, blipcfg.icon)
    SetBlipColour(blip, blipcfg.colour)
    SetBlipScale(blip, blipcfg.scale)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(blipcfg.label) -- Replace with the desired blip name
    EndTextCommandSetBlipName(blip)
    print("Blip created for: " .. blipcfg.label)
end