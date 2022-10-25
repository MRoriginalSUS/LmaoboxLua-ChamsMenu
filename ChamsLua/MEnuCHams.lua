local menuLoaded, MenuLib = pcall(require, "Menu")                                
assert(menuLoaded, "MenuLib not found, please install it!")                      
assert(MenuLib.Version >= 1.44, "MenuLib version is too old, please update it!")  

local m1 = {
    materials.Create( "AC_Fresnel", [["VertexLitGeneric"
    {   
        $basetexture "vgui/white_additive"
        $bumpmap "models/player/shared/shared_normal"
        $envmap "skybox/sky_dustbowl_01"
        $envmapfresnel "1"
        $phong "1"
        $phongfresnelranges "[0 0.05 0.1]"
        $selfillum "1"
        $selfillumfresnel "1"
        $basemapalphaphongmask "1"
        $selfillumfresnelminmaxexp "[0.5 0.5 0]"
        $selfillumtint "[0 0 0]"
        $envmaptint "[0.5 1 0]"
        $additive "0"
    }
    ]]),

    materials.Create( "AC_Glow", [["VertexLitGeneric"
    {   
        $basetexture "vgui/white_additive"
        $bumpmap "models/player/shared/shared_normal"
        $envmap "skybox/sky_dustbowl_01"
        $envmapfresnel "1"
        $phong "1"
        $phongfresnelranges "[0 0 1]"
        $selfillum "1"
        $selfillumfresnel "1"
        $basemapalphaphongmask "1"
        $selfillumfresnelminmaxexp "[1 1 1]"
        $selfillumtint "[0 0 0]"
        $envmaptint "[0.5 1 0]"
        $additive "0"
        $cloakPassEnabled "0"
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
        $color2 "[0 0 0]"
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
        $color2 "[0 0 0]"

    }
    ]]),

    materials.Create("AC_Wireframe", [["VertexLitGeneric" 
    {
        $basetexture "sprites/light_glow04"
        $phong "1"
        $phongfresnelranges "[0 0.05 0.1]"
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
                texturescrollvar "$basetexturetransform"
                texturescrollrate "1"
                texturescrollangle "120"
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
        $phongfresnelranges "[0 0.05 0.1]"
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
        $phongfresnelranges "[0 0.05 0.1]"
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
    "Glow",
    "Brick",
    "Shiny",
    "Wireframe",
    "SUS",
    "Pulse",
    "Flames",
    "Stars"
}
local Material2 = {
    "Fresnel",
    "Glow",
    "Brick",
    "Shiny",
    "Wireframe",
    "SUS",
    "Pulse",
    "Flames",
    "Stars"
}
local Material3 = {
    "Fresnel",
    "Glow",
    "Brick",
    "Shiny",
    "Wireframe",
    "SUS",
    "Pulse",
    "Flames",
    "Stars"
}

local menu = MenuLib.Create("Chams", MenuFlags.AutoSize)
menu.Style.TitleBg = { 205, 15, 190, 100 } 
menu.Style.Outline = true 


local Enemy = menu:AddComponent(MenuLib.Checkbox( "Enable For Enemy", false ))
local Mat1 = menu:AddComponent(MenuLib.Combo(  "Enemy Material", Material1, ItemFlags.FullWidth ))
local Red1 = menu:AddComponent(MenuLib.Slider( "Red", 1, 255, 1))
local Green1 = menu:AddComponent(MenuLib.Slider( "Green", 1, 255, 1))
local Blue1 = menu:AddComponent(MenuLib.Slider( "Blue", 1, 255, 1))
local Alpha1 = menu:AddComponent(MenuLib.Checkbox( "Alpha", false))
local Extra1 = menu:AddComponent(MenuLib.Checkbox( "Extra", false))
local Wire1 = menu:AddComponent(MenuLib.Checkbox( "wire", false))
local Disguised = menu:AddComponent(MenuLib.Checkbox( "Disable on disguised spy", false))
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



local TempOptions = {}                                             

local function ResetTempOptions()                                  
    for k, v in pairs(TempOptions) do                              
        TempOptions[k].WasUsed = false                            
    end
end

local function SetOptionTemp(option, value)                        
    local guiValue = gui.GetValue(option)                         
    if guiValue ~= value then                                      
        gui.SetValue(option, value)                               
        TempOptions[option] = {                                   
            Value   = guiValue,                                    
            WasUsed = true    }                                    
    end

    if TempOptions[option] ~= nil then                             
        TempOptions[option].WasUsed = true                        
    end
end

local function CheckTempOptions()                                 
    for k, v in pairs(TempOptions) do                            
        if not v.WasUsed then                                     
            gui.SetValue(k, v.Value)                              
            TempOptions[k] = nil                                   
        end
    end
end

--MAIN CODE



local function onDrawModel( drawModelContext )

    local entity = drawModelContext:GetEntity()
    local model = drawModelContext:GetModelName()
    local bruh = 0
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
   
   


    if entity and entity:IsValid() then  
        if Enemy:GetValue() then 
        if Disguised:GetValue() and entity:InCond(3) then return end
        if (entity:GetClass() == 'CTFWearable' or entity:GetClass() == "CTFPlayer" or (entity:IsWeapon() and entity:GetPropEntity( 'm_hOwner' ))) and not(entity:InCond(4)) then 
            if (entity:GetTeamNumber() ~= me:GetTeamNumber())  then  
                local chams = m1[Mat1:GetSelectedIndex()]
                drawModelContext:ForcedMaterialOverride ( chams )
                chams:SetShaderParam( "$envmaptint", Vector3(RED1, GREEN1, BLUE1) )
                chams:SetShaderParam( "$color2", Vector3(RED1, GREEN1, BLUE1) )
                chams:SetMaterialVarFlag(MATERIAL_VAR_ADDITIVE, Alpha1:GetValue()) 
                chams:SetMaterialVarFlag(MATERIAL_VAR_WIREFRAME, Wire1:GetValue()) 
                if Extra1:GetValue() then
                    drawModelContext:DrawExtraPass()
                end
            end
        end
    end
    end
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
    
    local me = entities.GetLocalPlayer()
    local entity = drawModelContext:GetEntity()
    if LWeapon:GetValue() then
    if not me and not me:IsValid() then return end
        if not entity or entity:IsValid() ~= true then
            local model_name = drawModelContext:GetModelName()
            local chams2 = m1[Mat3:GetSelectedIndex()]
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
        end
    end


 
end



local function OnUnload()                                
    MenuLib.RemoveMenu(menu)                             
    client.Command('play "ui/buttonclickrelease"', true) 
end

callbacks.Unregister("Unload", "MCT_Unload")                    
callbacks.Unregister("Draw", "MCT_Draw")     

callbacks.Register("Unload", "MCT_Unload", OnUnload)                            
callbacks.Register( "DrawModel", "hook12323", onDrawModel ) 