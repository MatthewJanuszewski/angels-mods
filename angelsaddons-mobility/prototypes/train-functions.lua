require("util")

---@alias Angels.Addons.Mobility.TrainType "crawlertrain"|"petrotrain"|"smeltingtrain"
---@alias Angels.Addons.Mobility.TrainPrototype data.LocomotivePrototype|data.FluidWagonPrototype|data.CargoWagonPrototype

---A mapping of supported equipment categories for use with locomotives and wagons.
---@class Angels.Addons.Mobility.EquipmentCategories
---@field locomotives data.EquipmentCategoryID[] Supported locomotive equipment categories.
---@field wagons data.EquipmentCategoryID[] Supported wagon equipment categories.

---A mapping of supported equipment grid names for use with locomotives and wagons.
---@class Angels.Addons.Mobility.EquipmentGrids
---@field locomotives data.EquipmentGridID[] Supported locomotive equipment grids.
---@field wagons data.EquipmentGridID[] Supported wagon equipment grids.

---Defines an ingredient for a tiered train recipe with a given `name`, for a tier mapping to an
---index in `amounts`.
---@class Angels.Addons.Mobility.TieredIngredient
---@field type "fluid"|"item"
---@field name data.ItemID
---A table of either an integer defining the amount of the ingredient in the recipe, or a string
---representing a signed integer, e.g. `"+10"` or `"-10"`, that defines an adjustment relative to
---the ingredient amount of the sum of all previous tiers.
---@field amounts (int|string)[]

---Defines the components for a tier of a train technology that may be generated by the
---`generate_train_technology` function.
---@class Angels.Addons.Mobility.TrainTechnologyTier
---@field unit data.TechnologyUnit The cost in items and time of the train technology.
---@field prerequisites data.TechnologyID[]? An optional table of additional technology prerequisites to add to the train technology.

---A dictionary of technology names mapped to recipe names for recipes that the associated
---technology will unlock.
---@type { [data.TechnologyID]: { [data.RecipeID] : boolean } }
local technology_recipe_unlocks = {}

---Adds the given `recipe_name` to the `technology_recipe_unlocks` dictionary, to be unlocked by the
---technology with the given `technology_name`.
---@param technology_name data.TechnologyID The name of a technology prototype that will unlock the recipe with the `recipe_name`.
---@param recipe_name data.RecipeID The name of a recipe prototype unlocked by the technology with the `technology_name`.
local function add_recipe_unlock(technology_name, recipe_name)
  if not technology_recipe_unlocks[technology_name] then
    technology_recipe_unlocks[technology_name] = {}
  end

  technology_recipe_unlocks[technology_name][recipe_name] = true
end

---Gets the technolgoy effects that unlock any recipes associated with the technology with the given
---`technology_name` from the `technology_recipe_unlocks` dictionary.
---@param technology_name data.TechnologyID
---@return data.Modifier[]
local function get_unlock_recipe_effects(technology_name)
  ---@type data.Modifier[]
  local effects = {}

  if technology_recipe_unlocks[technology_name] then
    for recipe_name, _ in pairs(technology_recipe_unlocks[technology_name]) do
      ---@type data.Modifier
      local effect = {
        type = "unlock-recipe",
        recipe = recipe_name,
      }

      table.insert(effects, effect)
    end
  end

  return effects
end

---Gets the type of train from the given `name`.
---@param prototype_name data.EntityID --The name of a train prototype.
---@return Angels.Addons.Mobility.TrainType
local function get_train_type(prototype_name)
  ---@type Angels.Addons.Mobility.TrainType
  local train_type
  if string.find(prototype_name, "crawler") then
    train_type = "crawlertrain"
  elseif string.find(prototype_name, "petro") then
    train_type = "petrotrain"
  elseif string.find(prototype_name, "smelting") then
    train_type = "smeltingtrain"
  else
    log("(get_train_type) unknown TrainType for train with prototype name '" .. prototype_name .. "'.")
  end

  return train_type
end

---Appends the speed cap to the `localised_description` of the given `train` prototype.
---@param train_prototype data.CargoWagonPrototype|data.FluidWagonPrototype|data.ArtilleryWagonPrototype
local function append_speed_cap_to_train_locale_description(train_prototype)
  if not train_prototype then return end

  -- Convert the tile/tick speed to km/h, discarding any digits after the decimal.
  local speed_cap = tostring(math.floor(train_prototype.max_speed * 216 * 100) / 100)

  if train_prototype.localised_description then
    if type(train_prototype.localised_description) == "string" then
      train_prototype.localised_description = { "", train_prototype.localised_description }
          end

    -- Append the speed cap on a new line below the existing description.
    table.insert(train_prototype.localised_description, "\n")
    table.insert(train_prototype.localised_description, { "speed-text.speed-cap", speed_cap })
  else
    train_prototype.localised_description = { "speed-text.speed-cap", speed_cap }
        end
      end

---Appends the speed cap to the `localised_description` of all cargo, fluid, and artillery wagons.
local function add_speed_cap_to_trains_locale_descriptions()
  local train_types = { "cargo-wagon", "fluid-wagon", "artillery-wagon" }
  for _, train_type in pairs(train_types) do
    for _, train_prototype in pairs(data.raw[train_type]) do
      append_speed_cap_to_train_locale_description(train_prototype)
    end
  end
end

---A list of root Angel train prototype names, to which a tier may be appended to obtain a specific
---train prototype name.
---
---The first tier is just the base name; otherwise, it is the base name suffixed with `-#`.
local angel_train_base_names = {
    "crawler-locomotive",
    "crawler-locomotive-wagon",
    "crawler-wagon",
    "crawler-bot-wagon",

    "petro-locomotive-1",
    "petro-tank1",
    "petro-tank2",

    "smelting-locomotive-1",
    "smelting-locomotive-tender",
    "smelting-wagon-1",
}

---Generates the [`additional_pastable_entities`](https://lua-api.factorio.com/latest/prototypes/EntityPrototype.html#additional_pastable_entities)
---for the train prototype with the given `prototype_name`, allowing this mod to receive the
---`on_entity_settings_pasted` event and handle the copying between types directly.
---@param prototype_name data.EntityID --The name of a train prototype.
---@return data.EntityID[]?
local function generate_additional_pastable_entities(prototype_name)
  ---A list of all Angel train prototype names that support copy/paste operations.
  ---@type data.EntityID[]
  local pastable_entities = {}

  for _, angel_train_base_name in pairs(angel_train_base_names) do
    local num_tiers = angelsmods.addons.mobility[get_train_type(angel_train_base_name)].tier_amount

    if num_tiers > 1 then
      --Construct the train prototype names for the configured number of tiers.
      for tier = 1, num_tiers, 1 do
        local entity_name = angel_train_base_name

        if tier > 1 then
          entity_name = entity_name .. "-" .. tier
        end

        table.insert(pastable_entities, entity_name)
      end
    end
  end

  ---`true` if `prototype_name` is a member of `pastable_entities`.
  local is_prototype_compatible = false

  ---A list of all Angel train prototype names that support copy/paste operations, excluding `prototype_name`
  ---@type data.EntityID[]
  local additional_pastable_entities = {}

  for _, pastable_entity in pairs(pastable_entities) do
    if pastable_entity == prototype_name then
      is_prototype_compatible = true
    else
      table.insert(additional_pastable_entities, pastable_entity)
    end
  end

  return is_prototype_compatible and additional_pastable_entities or nil
end

---Expands the given `ingredients` into a valid table of ingredient prototypes for the given `tier`.
---@param tier int The tier of the recipe to which the `ingredients` correspond.
---@param ingredients Angels.Addons.Mobility.TieredIngredient[]|data.IngredientPrototype[] A table of TieredIngredients to be expanded into discrete IngredientPrototypes, or a simple table of ingredients.
---@return data.IngredientPrototype[]
local function generate_tiered_ingredients(tier, ingredients)
  if tier < 1 then
    return {}
  end

  local generated_ingredients = {}
  for _, ingredient in pairs(ingredients) do
    ---@type data.FluidAmount|uint16
    local ingredient_amount

    if ingredient.amounts then
      -- Working with a TieredIngredient, so build the IngredientPrototype for the current tier.
      ingredient_amount = ingredient.amounts[tier] or 0

      if type(ingredient_amount) == "string" then
        -- Amount is a quantity defined relative to the previous tier, so calculate the amount.
        local previous_ingredient_amount = 0

        -- Determine the cumulative amount of the ingredient from all previous tiers;
        -- this uses a recursive call to this function.
        local previous_ingredients = generate_tiered_ingredients(tier - 1, ingredients) or {}
        for _, previous_ingredient in pairs(previous_ingredients) do
          if previous_ingredient.name == ingredient.name then
            previous_ingredient_amount = previous_ingredient_amount + (previous_ingredient.amount or 0)
          end
        end

        -- Parse the string into the applicable math operation.
        local sign = string.sub(ingredient_amount, 1, 1)
        if sign == "-" then
          ingredient_amount = previous_ingredient_amount - tonumber(string.sub(ingredient_amount, 2))
        elseif sign == "+" then
          ingredient_amount = previous_ingredient_amount + tonumber(string.sub(ingredient_amount, 2))
        else
          ingredient_amount = tonumber(ingredient_amount)
        end
      end
    else
      -- Working with a single IngredientPrototype.
      ingredient_amount = ingredient.amount
    end

    if ingredient_amount > 0 then
      ---@type data.IngredientPrototype
      local generated_ingredient = {
        type = ingredient.type,
        name = ingredient.name,
        amount = ingredient_amount,
      }

      table.insert(generated_ingredients, generated_ingredient)
    end
  end

  return generated_ingredients
end

---Generates a tiered train recipe from the given `ref_recipe`.
---@param ref_recipe data.RecipePrototype The recipe prototype that defines the common base recipe for all tiers.
---@param tiered_ingredients Angels.Addons.Mobility.TieredIngredient[]
---@param technology_name data.TechnologyID The name of the technology that will unlock the created recipe.
local function generate_train_recipe(ref_recipe, tiered_ingredients, technology_name)
  local recipes = {}

  local train_type = get_train_type(ref_recipe.name)
  if angelsmods.addons.mobility[train_type].tier_amount > 1 then
    for i = 1, angelsmods.addons.mobility[train_type].tier_amount, 1 do
      ---@type data.RecipePrototype
      local copy = table.deepcopy(ref_recipe)

      local recipe_name = ref_recipe.name
      local ingredients = generate_tiered_ingredients(i, tiered_ingredients)

      if i > 1 then
        recipe_name = recipe_name .. "-" .. i

        local name_of_previous_tier = i == 2 and ref_recipe.name or (ref_recipe.name .. "-" .. (i - 1))

        ---@type data.IngredientPrototype
        local ingredient = { type = "item", name = name_of_previous_tier, amount = 1 }

        table.insert(ingredients, ingredient)
      end

      copy.name = recipe_name
      copy.localised_name = { "", { "recipe-name." .. ref_recipe.name }, " MK" .. i }
      copy.localised_description = { "recipe-description." .. ref_recipe.name }
      copy.ingredients = ingredients
      copy.results = { { type = "item", name = recipe_name, amount = 1 } }

      if copy.order then
        copy.order = copy.order .. "-" .. i
      end

      table.insert(recipes, copy)

        if i > 1 then
        technology_name = technology_name .. "-" .. i
        end

      add_recipe_unlock(technology_name, recipe_name)
    end
  else
    ref_recipe.ingredients = generate_tiered_ingredients(1, ref_recipe.ingredients)
    table.insert(recipes, ref_recipe)

    add_recipe_unlock(technology_name, ref_recipe.name)
  end

  data:extend(recipes)
end

local add_tier_number = mods["angelsrefining"] and angelsmods.functions.add_number_icon_layer
  or function(icon_layers, number_tier, number_tint)
    local icon_size_scale = ((icon_layers[1] or {}).icon_size or 32) * ((icon_layers[1] or {}).scale or 1) / 32
    local new_icon_layers = util.table.deepcopy(icon_layers)
    table.insert(new_icon_layers, {
      icon = "__angelsaddons-mobility__/graphics/icons/numerals/num-" .. number_tier .. "-outline.png",
      icon_size = 64,
      tint = { 0, 0, 0, 255 },
      scale = 0.5 * icon_size_scale,
    })
    table.insert(new_icon_layers, {
      icon = "__angelsaddons-mobility__/graphics/icons/numerals/num-" .. number_tier .. ".png",
      icon_size = 64,
      tint = number_tint,
      scale = 0.5 * icon_size_scale,
    })
    return new_icon_layers
  end

---Generates a tiered train item from the given `ref_item`.
---@param ref_item data.ItemWithEntityDataPrototype The item prototype that defines the common base item for all tiers.
local function generate_train_items(ref_item)
  local items = {}

  local train_type = get_train_type(ref_item.name)
  if angelsmods.addons.mobility[train_type].tier_amount > 1 then
    for i = 1, angelsmods.addons.mobility[train_type].tier_amount, 1 do
      ---@type data.ItemWithEntityDataPrototype
      local copy = table.deepcopy(ref_item)
      local name = ref_item.name

      if i > 1 then
        name = name .. "-" .. i
      end

      copy.order = copy.order .. "-" .. i
      copy.name = name
      copy.localised_name = { "", { "item-name." .. ref_item.name }, " MK" .. i }
      copy.localised_description = { "item-description." .. ref_item.name }
      copy.place_result = name
      copy.icons = ref_item.icons or {
          {
          icon = ref_item.icon,
          icon_size = ref_item.icon_size,
          },
        }
      copy.icon = nil
      copy.icon_size = nil
      copy.icons = add_tier_number(copy.icons, i, angelsmods.addons.mobility[train_type].number_tint)
      table.insert(items, copy)
    end
  else
    table.insert(items, ref_item)
  end

  data:extend(items)
  end

---Generates a tiered train entity from the given reference `entity`.
---@param ref_entity Angels.Addons.Mobility.TrainPrototype The entity prototype that defines the common base entity for all tiers.
local function generate_train_entities(ref_entity)
  local entities = {}

  local train_type = get_train_type(ref_entity.name)
  if angelsmods.addons.mobility[train_type].tier_amount > 1 then
    if ref_entity.inventory_size then
      ref_entity.inventory_size = ref_entity.inventory_size / 1.5
    end

    for i = 1, angelsmods.addons.mobility[train_type].tier_amount, 1 do
      ---@type Angels.Addons.Mobility.TrainPrototype
      local copy = table.deepcopy(ref_entity)
      local name = ref_entity.name

      if i > 1 then
        name = name .. "-" .. i
      end

      local multiplier = math.pow(1.25, i - 1)

      copy.name = name
      copy.localised_name = { "", { "entity-name." .. ref_entity.name }, " MK" .. i }
      copy.icons = ref_entity.icons or {
          {
          icon = ref_entity.icon,
          icon_size = ref_entity.icon_size,
          },
        }
      copy.icon = nil
      copy.icon_size = nil
      copy.icons = add_tier_number(copy.icons, i, angelsmods.addons.mobility[train_type].number_tint)
      copy.minable.result = name
      copy.max_health = ref_entity.max_health * multiplier
      copy.max_speed = ref_entity.max_speed * multiplier
      copy.friction_force = ref_entity.friction_force / multiplier
      copy.air_resistance = ref_entity.air_resistance / multiplier
      copy.weight = ref_entity.weight * multiplier
      copy.braking_force = ref_entity.braking_force * (multiplier * 2 - 1)

      if ref_entity.type == "locomotive" then
        copy.max_power = (tonumber(ref_entity.max_power:match("%d[%d.]*")) * multiplier) .. "kW"
        copy.reversing_power_modifier = ref_entity.reversing_power_modifier * multiplier
      elseif ref_entity.type == "cargo-wagon" then
        copy.inventory_size = math.floor(ref_entity.inventory_size * (multiplier * 1.5))
      elseif ref_entity.type == "fluid-wagon" then
        copy.capacity = math.floor(ref_entity.capacity * i)
      end

      copy.additional_pastable_entities = generate_additional_pastable_entities(copy.name)
      table.insert(entities, copy)
    end
  else
    ref_entity.additional_pastable_entities = generate_additional_pastable_entities(ref_entity.name)
    table.insert(entities, ref_entity)
  end

  data:extend(entities)
end

---Generates a tiered train technology from the given reference `ref_technology` and `tiers`.
---@param ref_technology data.TechnologyPrototype The technology prototype that defines the common base technology for all tiers.
---@param tiers Angels.Addons.Mobility.TrainTechnologyTier
local function generate_train_technology(ref_technology, tiers)
  local technologies = {}

  local train_type = get_train_type(ref_technology.name)
  if angelsmods.addons.mobility[train_type].tier_amount > 1 then
    for i = 1, angelsmods.addons.mobility[train_type].tier_amount, 1 do
      ---@type data.TechnologyPrototype
      local copy = table.deepcopy(ref_technology)
      local technology_name = ref_technology.name

      ---@type Angels.Addons.Mobility.TrainTechnologyTier
      local tier = tiers[i]

      local prerequisites = ref_technology.prerequisites
      if i > 1 then
        technology_name = technology_name .. "-" .. i
        if i == 2 then
          prerequisites = { ref_technology.name }
        else
          prerequisites = { ref_technology.name .. "-" .. (i - 1) }
        end
      end
      for _, prereq in pairs(tier.prerequisites or {}) do
        table.insert(prerequisites, prereq)
      end

      copy.order = copy.order .. "-" .. i
      copy.name = technology_name
      copy.localised_name = { "", { "technology-name." .. ref_technology.name }, " MK" .. i }
      copy.localised_description = { "technology-description." .. ref_technology.name }
      copy.effects = get_unlock_recipe_effects(technology_name)
      copy.unit = tier.unit
      copy.prerequisites = prerequisites

      table.insert(technologies, copy)
    end
  else
    ref_technology.effects = get_unlock_recipe_effects(ref_technology.name)
    ref_technology.unit = ref_technology.unit or tiers[1].unit
    table.insert(technologies, ref_technology)
  end

  data:extend(technologies)
end

---Updates the `EquipmentGrid` with the given `equipment_grid_name`, adding the equipment
---categories specified by `categories_to_add`, and removing the equipment categories specified by
---`categories_to_remove`.
---@param equipment_grid_name data.EquipmentGridID
---@param categories_to_add? data.EquipmentCategoryID[]|data.EquipmentCategoryID --The equipment categories to add.
---@param categories_to_remove? data.EquipmentCategoryID[]|data.EquipmentCategoryID --The equipment categories to remove.
local function update_equipment_grid(equipment_grid_name, categories_to_add, categories_to_remove)
  ---Returns a mapping of equipment categories to indexes.
  ---@param tab data.EquipmentCategoryID[]
  ---@return { data.EquipmentCategoryID: int }
  local function flip_t(tab)
    local new_t = {}
    for k, v in pairs(tab) do
      new_t[v] = k
    end
    return new_t
  end

  if type(categories_to_add) == "string" then
    categories_to_add = { categories_to_add }
  end

  if type(categories_to_remove) == "string" then
    categories_to_remove = { categories_to_remove }
  end

  categories_to_add = categories_to_add or {}
  categories_to_remove = categories_to_remove or {}

  -- Remove any of the filtered categories from equipment_categories.
  local categories = data.raw["equipment-grid"][equipment_grid_name].equipment_categories
  local flipped_categories = flip_t(categories)
  for _, equipment_category in pairs(categories_to_remove) do
    local index = flipped_categories[equipment_category]
    if index then
      categories[index] = nil
    end
  end

  for _, value in pairs(categories_to_add) do
    if not flipped_categories[value] then
      table.insert(categories, value)
    end
  end
end

local function update_equipment(equipment_type, equipment_name, categories_to_add)
  if type(categories_to_add) == "table" then
    for _, category_to_add in pairs(categories_to_add) do
      update_equipment(equipment_type, equipment_name, category_to_add)
    end
  end

  if not data.raw[equipment_type] then
    return
  end
  if not data.raw[equipment_type][equipment_name] then
    return
  end
  if not data.raw["equipment-category"][categories_to_add] then
    return
  end

  if data.raw[equipment_type][equipment_name].categories then
    for _, category in pairs(data.raw[equipment_type][equipment_name].categories) do
      if category == categories_to_add then
        return
      end
    end
  else
    data.raw[equipment_type][equipment_name].categories = {}
  end

  table.insert(data.raw[equipment_type][equipment_name].categories, categories_to_add)
end

return {
  generate_train_entities = generate_train_entities,
  generate_train_items = generate_train_items,
  generate_train_recipe = generate_train_recipe,
  generate_train_technology = generate_train_technology,
  update_equipment_grid = update_equipment_grid,
  update_equipment = update_equipment,
  add_speed_cap_to_trains_locale_descriptions = add_speed_cap_to_trains_locale_descriptions,
}
