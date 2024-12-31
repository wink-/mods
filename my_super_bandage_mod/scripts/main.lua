-- Item Definition
local superBandage = Item:new("Base.SuperBandage")
superBandage.DisplayName = "Super Bandage"
superBandage.DisplayCategory = "FirstAid"
superBandage.Weight = 0.1
superBandage.MaxStack = 20
superBandage.Icon = "SuperBandage" -- Name of our texture (without extension)
superBandage.IsStackable = true
superBandage.IsBandage = true

function superBandage:getHealingAmount()
    return 20; -- Modify healing amount here
end


-- Recipe Definition
local recipeSuperBandage = Recipe:new("Super Bandage")
recipeSuperBandage.Result = "Base.SuperBandage"
recipeSuperBandage.RequiredSkills = { {"FirstAid", 0} }
recipeSuperBandage.Items = {
    {Item = "Base.Bandage", Count = 2},
    {Item = "Base.Disinfectant", Count = 1}
}
recipeSuperBandage.OnCraft = function(items) 
    -- You could add custom logic here
end

Events.OnGameStart.Add(function()
    -- Register our custom item
    Items.AddItem(superBandage)
    
	-- Register the recipe
    Recipes.Add(recipeSuperBandage)
end)