local menuLoaded, MenuLib = pcall(require, "Menu")                                -- Load MenuLib
assert(menuLoaded, "MenuLib not found, please install it!")                       -- If not found, throw error
assert(MenuLib.Version >= 1.44, "MenuLib version is too old, please update it!")  -- If version is too old, throw error

local m1 = {
    materials.Create( "AC_Fresnel", [["VertexLitGeneric"
    {
        $basetexture "vgui/white_additive"
        $bumpmap "models/player/shared/shared_normal"
        $envmap "skybox/sky_dustbowl_01"
        $envmapfresnel "1"
        $phong "1"
        $phongfresnelranges "[0 1 1]"
        $selfillum "1"
        $selfillumfresnel "1"
        $basemapalphaphongmask "1"
        $selfillumfresnelminmaxexp "[0 0 0]"
        $selfillumtint "[0 0 0]"
        $envmaptint "[0.5 1 0]"
        $additive "0"
        $cloakPassEnabled "1"
        $scrollanglevar "0"
    }
    ]]),

    materials.Create( "AC_Shaded", [["VertexLitGeneric"
    {
        $basetexture "vgui/white_additive"
        $bumpmap "vgui/white_additive"
        $selfillum "1"
        $selfillumfresnel "1"
        $selfillumfresnelminmaxexp "[-0.25 1 1]"
        $additive "0"
        $color "[1 1 1]"

        "proxies" 
        {
            "sine"
            {
				sineperiod "0.8"
				sinemin "0"
				sinemax "0.8"
                resultvar "$color"
            }
        }
    }
    ]]),

    materials.Create("AC_Brick", [["VertexLitGeneric"
    {
        $basetexture "brick/brickwall031b"
        $additive "1"
        $phong "1"
        $phongfresnelranges "[0 0.5 10]"
        $envmap "cubemaps/cubemap_sheen001"
        $envmapfresnel "1"
        $selfillum "1"
        $rimlight "1"
        $rimlightboost "100"
        $envmapfresnelminmaxexp "[0 1 2]"
        $color2 "[1 1 1]"
        $scrollanglevar "0"

        "proxies" 
        {
            "sine"
            {
                resultvar "$scrollanglevar"
				sineperiod "50000"
				sinemin "0"
				sinemax "360"
            }
            "texturescroll"
            {
                texturescrollvar "$basetexturetransform"
                texturescrollrate "0.4"
                texturescrollangle "$scrollanglevar"
            }
        }
    }
    ]]),

    materials.Create("AC_Shiny", [["VertexLitGeneric"
    {
        $basetexture "vgui/white_additive"
	    $bumpmap "vgui/white_additive"
	    $envmap "cubemaps/cubemap_sheen001"
	    $selfillum "1"
	    $selfillumfresnel "1"
	    $selfillumfresnelminmaxexp "[-0.25 1 1]"
        $additive "0"
        $color2 "[1 1 1]"

    }
    ]]),

    materials.Create("AC_Wireframe", [["VertexLitGeneric" 
    {
        $basetexture "sprites/light_glow04"
        $nodecal "1"
        $model "1"
        $additive "1"
        $nocull "1"
        $wireframe "1"
        $envmaptint "[0.5 1 0]"
           
        "proxies"
            {
            "texturescroll"
                {
                    texturescrollvar "$basetexturetransform"
                    texturescrollrate "0.4"
                    texturescrollangle "90"
                }
            }
    }
    ]]),

    materials.Create("AC_SUS", [["VertexLitGeneric"
    {
        $basetexture "brick/brickwall031b"
        $bumpmap "models/player/shared/shared_normal"
        $envmap "skybox/sky_dustbowl_01"
        $envmapfresnel "1"
        $phong "1"
        $phongfresnelranges "[0 1 1]"
        $selfillum "1"
        $selfillumfresnel "1"
        $basemapalphaphongmask "1"
        $selfillumfresnelminmaxexp "[0 0 0]"
        $selfillumtint "[0 0 0]"
        $envmaptint "[0.5 1 0]"
        $additive "0"

        "proxies" 
        {
        "texturescroll"
            {
                "texturescrollvar" $basetexturetransform
                "texturescrollrate" 1
                "texturescrollangle" 120
            }
        }
    }
    ]]),

    materials.Create( "AC_Pulse", [["VertexLitGeneric"
    {
        $basetexture "patterns/workshop/smissmas_2020/2265040710/2265040710_serenity"
        $bumpmap "models/player/shared/shared_normal"
        $envmap "skybox/sky_dustbowl_01"
        $envmapfresnel "1"
        $phong "1"
        $phongfresnelranges "[0 1 1]"
        $selfillum "1"
        $selfillumfresnel "1"
        $basemapalphaphongmask "1"
        $selfillumfresnelminmaxexp "[0 0 0]"
        $selfillumtint "[0 0 0]"
        $envmaptint "[0.5 1 0]"
        $additive "0"
        $cloakPassEnabled "1"
        $scrollanglevar "0"

        "proxies" 
        {
            "sine"
            {
                resultvar "$scrollanglevar"
				sineperiod "600000"
				sinemin "0"
				sinemax "360"
            }
            "texturescroll"
            {
                texturescrollvar "$basetexturetransform"
                texturescrollrate "1"
                texturescrollangle "$scrollanglevar"
            }
        }
    }
    ]]),

    materials.Create( "AC_Electric", [["VertexLitGeneric"
    {
        $basetexture "patterns/workshop/screamfortress_2018/1326382486/1326382486_electro_skulls_blu"
        $bumpmap "models/player/shared/shared_normal"
        $envmap "skybox/sky_dustbowl_01"
        $envmapfresnel "1"
        $phong "1"
        $phongfresnelranges "[0 1 1]"
        $selfillum "1"
        $selfillumfresnel "1"
        $basemapalphaphongmask "1"
        $selfillumfresnelminmaxexp "[0 0 0]"
        $selfillumtint "[0 0 0]"
        $envmaptint "[0.5 1 0]"
        $additive "0"
        $cloakPassEnabled "1"
        $scrollanglevar "0"

        "proxies" 
        {
            "sine"
            {
                resultvar "$scrollanglevar"
				sineperiod "600000"
				sinemin "0"
				sinemax "360"
            }
            "texturescroll"
            {
                texturescrollvar "$basetexturetransform"
                texturescrollrate "0.5"
                texturescrollangle "$scrollanglevar"
            }
        }
    }
    ]]),

    materials.Create( "AC_Serenity", [["VertexLitGeneric"
    {
        $basetexture "patterns/workshop/smissmas_2020/2265040710/2265040710_starlight2"
        $bumpmap "models/player/shared/shared_normal"
        $envmap "skybox/sky_dustbowl_01"
        $envmapfresnel "1"
        $phong "1"
        $phongfresnelranges "[0 1 1]"
        $selfillum "1"
        $selfillumfresnel "1"
        $basemapalphaphongmask "1"
        $selfillumfresnelminmaxexp "[0 0 0]"
        $selfillumtint "[0 0 0]"
        $envmaptint "[0.5 1 0]"
        $additive "0"
        $cloakPassEnabled "1"
        $scrollanglevar "0"

        "proxies" 
        {
            "sine"
            {
                resultvar "$scrollanglevar"
				sineperiod "600000"
				sinemin "0"
				sinemax "360"
            }
            "texturescroll"
            {
                texturescrollvar "$basetexturetransform"
                texturescrollrate "0.5"
                texturescrollangle "$scrollanglevar"
            }
        }
    }
    ]]),

    
}



local Material1 = {
    "Fresnel",
    "Shaded",
    "Brick",
    "Shiny",
    "Wireframe",
    "SUS",
    "Pulse",
    "Pulse2",
    "Stars"
}
local Material2 = {
    "Fresnel",
    "Shaded",
    "Brick",
    "Shiny",
    "Wireframe",
    "SUS",
    "Pulse",
    "Pulse2",
    "Stars"
}
local Material3 = {
    "Fresnel",
    "Shaded",
    "Brick",
    "Shiny",
    "Wireframe",
    "SUS",
    "Pulse",
    "Pulse2",
    "Stars"
}

local menu = MenuLib.Create("Chams", MenuFlags.AutoSize)
menu.Style.TitleBg = { 205, 95, 50, 255 } -- Title Background Color (Flame Pea)
menu.Style.Outline = true 


local Enemy = menu:AddComponent(MenuLib.Checkbox( "Enable For Enemy", false ))
local Mat1 = menu:AddComponent(MenuLib.Combo(  "Enemy Material", Material1, ItemFlags.FullWidth ))
local Red1 = menu:AddComponent(MenuLib.Slider( "Red", 1, 255, 1))
local Green1 = menu:AddComponent(MenuLib.Slider( "Green", 1, 255, 1))
local Blue1 = menu:AddComponent(MenuLib.Slider( "Blue", 1, 255, 1))
local Alpha1 = menu:AddComponent(MenuLib.Checkbox( "Alpha", false))
local Extra1 = menu:AddComponent(MenuLib.Checkbox( "Extra", false))
local Wire1 = menu:AddComponent(MenuLib.Checkbox( "wire", false))
local Hands = menu:AddComponent(MenuLib.Checkbox( "Enable Hands", false ))
local Mat2 = menu:AddComponent(MenuLib.Combo(  "Hands Material", Material2, ItemFlags.FullWidth ))
local Red2 = menu:AddComponent(MenuLib.Slider( "Red", 1, 255, 1))
local Green2 = menu:AddComponent(MenuLib.Slider( "Green", 1, 255, 1))
local Blue2 = menu:AddComponent(MenuLib.Slider( "Blue", 1, 255, 1))
local Alpha2 = menu:AddComponent(MenuLib.Checkbox( "Alpha", false))
local Extra2 = menu:AddComponent(MenuLib.Checkbox( "Extra", false))
local Wire2 = menu:AddComponent(MenuLib.Checkbox( "wire", false))
local LWeapon = menu:AddComponent(MenuLib.Checkbox( "Enable Local Weapon", false ))
local Mat3 = menu:AddComponent(MenuLib.Combo(  "Weapon Material", Material3, ItemFlags.FullWidth ))
local Red3 = menu:AddComponent(MenuLib.Slider( "Red", 1, 255, 1))
local Green3 = menu:AddComponent(MenuLib.Slider( "Green", 1, 255, 1))
local Blue3 = menu:AddComponent(MenuLib.Slider( "Blue", 1, 255, 1))
local Alpha3 = menu:AddComponent(MenuLib.Checkbox( "Alpha", false))
local Extra3 = menu:AddComponent(MenuLib.Checkbox( "Extra", false))
local Wire3 = menu:AddComponent(MenuLib.Checkbox( "wire", false))



local TempOptions = {}                                             -- Temp options

local function ResetTempOptions()                                  -- Reset "TempOptions"
    for k, v in pairs(TempOptions) do                              -- Loop through all options in "TempOptions"
        TempOptions[k].WasUsed = false                             -- Set "WasUsed" to false for each option (so we can check if it was used)
    end
end

local function SetOptionTemp(option, value)                        -- Runs "SetOptionTemp" with the given cheat and setting
    local guiValue = gui.GetValue(option)                          -- Set "guiValue" to the current setting of the given cheat
    if guiValue ~= value then                                      -- Check if "guiValue" is different from the "SetOptionTemp"'s setting
        gui.SetValue(option, value)                                -- Set the cheat to the given setting
        TempOptions[option] = {                                    -- Create a new entry in "TempOptions" for the given cheat
            Value   = guiValue,                                    -- Set the entry's value to the current setting of the cheat
            WasUsed = true    }                                    -- Set the entry's "WasUsed" to true
    end

    if TempOptions[option] ~= nil then                             -- For each option in "TempOptions" (as long as one exists),
        TempOptions[option].WasUsed = true                         -- Set the entry's "WasUsed" to true
    end
end

local function CheckTempOptions()                                  -- When CheckTempOptions is called,
    for k, v in pairs(TempOptions) do                              -- Loop through all options in "TempOptions"
        if not v.WasUsed then                                      -- Check if the entry's "WasUsed" is false.
            gui.SetValue(k, v.Value)                               -- Set the cheat to the entry's value (the value it was set to before) and
            TempOptions[k] = nil                                   -- Remove the entry from "TempOptions" (so it doesn't get checked again)
        end
    end
end

--MAIN CODE



local function onDrawModel( drawModelContext )

    local entity = drawModelContext:GetEntity()
    local model = drawModelContext:GetModelName()
    
    local me = entities.GetLocalPlayer()

    local RED1 = Red1:GetValue() / 255
    local GREEN1 = Green1:GetValue() / 255
    local BLUE1 = Blue1:GetValue() / 255

    local RED2 = Red2:GetValue() / 255
    local GREEN2 = Green2:GetValue() / 255
    local BLUE2 = Blue2:GetValue() / 255

    local RED3 = Red3:GetValue() / 255
    local GREEN3 = Green3:GetValue() / 255
    local BLUE3 = Blue3:GetValue() / 255
    --and entity:GetClass() == "CTFPlayer"
   


    if entity and entity:IsValid() then 
        if Enemy:GetValue() then 
        if entity:GetClass() == 'CTFWearable' or entity:GetClass() == "CTFPlayer" or (entity:IsWeapon() and entity:GetPropEntity( 'm_hOwner' )) then 
            if (entity:GetTeamNumber() ~= me:GetTeamNumber())  then  
                local chams = m1[Mat1:GetSelectedIndex()]
                drawModelContext:ForcedMaterialOverride ( chams )
                chams:SetShaderParam( "$envmaptint", Vector3(RED1, GREEN1, BLUE1, a) )
                chams:SetShaderParam( "$color2", Vector3(RED1, GREEN1, BLUE1, a) )
                chams:SetMaterialVarFlag(MATERIAL_VAR_ADDITIVE, Alpha1:GetValue()) 
                chams:SetMaterialVarFlag(MATERIAL_VAR_WIREFRAME, Wire1:GetValue()) 
                if Extra1:GetValue() then
                    drawModelContext:DrawExtraPass()
                end
            end
        end
        end
    end
    --end
    if (entity and entity:IsValid())  then 
    if Hands:GetValue() then 
        if entity:GetClass() == "CTFViewModel" then
            local chams1 = m1[Mat2:GetSelectedIndex()]
            drawModelContext:ForcedMaterialOverride( chams1 )
            chams1:SetShaderParam( "$envmaptint", Vector3(RED2, GREEN2, BLUE2) )
            chams1:SetShaderParam( "$color2", Vector3(RED2, GREEN2, BLUE2) )
            chams1:SetMaterialVarFlag(MATERIAL_VAR_ADDITIVE, Alpha2:GetValue())
            chams1:SetMaterialVarFlag(MATERIAL_VAR_WIREFRAME, Wire2:GetValue()) 
            if Extra2:GetValue() then
                drawModelContext:DrawExtraPass()
            end
        end
    end
    end
    
    --[[if not entity or entity:IsValid() ~= true then
    if LWeapon:GetValue() then
        if string.find( model, 'c_models' ) then 
            local chams2 = m1[Mat3:GetSelectedIndex()]
            drawModelContext:ForcedMaterialOverride ( chams2 )
            chams2:SetShaderParam( "$envmaptint", Vector3(RED3, GREEN3, BLUE3) )
            chams2:SetShaderParam( "$color2", Vector3(RED3, GREEN3, BLUE3) )
            chams2:SetMaterialVarFlag(MATERIAL_VAR_ADDITIVE, Alpha3:GetValue())
        end
    end
end]]
    local me = entities.GetLocalPlayer()
    local entity = drawModelContext:GetEntity()
    if LWeapon:GetValue() then
--if model:find( 'c_models', 1, true )  then
    if not me and not me:IsValid() then return end
        if not entity or entity:IsValid() ~= true then
            local model_name = drawModelContext:GetModelName()
            local chams2 = m1[Mat3:GetSelectedIndex()]
        -- print( model_name )
            if string.find( drawModelContext:GetModelName(), 'c_models' ) then 
                drawModelContext:ForcedMaterialOverride( chams2 ) 
                chams2:SetShaderParam( "$envmaptint", Vector3(RED3, GREEN3, BLUE3) )
                chams2:SetShaderParam( "$color2", Vector3(RED3, GREEN3, BLUE3) )
                chams2:SetMaterialVarFlag(MATERIAL_VAR_ADDITIVE, Alpha3:GetValue())
                chams2:SetMaterialVarFlag(MATERIAL_VAR_WIREFRAME, Wire3:GetValue()) 
                if Extra3:GetValue() then
                    drawModelContext:DrawExtraPass()
                end
            end
            --return
        end
    end


 
end



local function OnUnload()                                -- Called when the script is unloaded
    MenuLib.RemoveMenu(menu)                             -- Remove the menu
    client.Command('play "ui/buttonclickrelease"', true) -- Play the "buttonclickrelease" sound
end

callbacks.Unregister("Unload", "MCT_Unload")                    -- Unregister the "Unload" callback
callbacks.Unregister("Draw", "MCT_Draw")     

callbacks.Register("Unload", "MCT_Unload", OnUnload)                         -- Register the "Unload" callback
--callbacks.Register("Draw", "MCT_Draw", doDraw)   
callbacks.Register( "DrawModel", "hook12323", onDrawModel ) 