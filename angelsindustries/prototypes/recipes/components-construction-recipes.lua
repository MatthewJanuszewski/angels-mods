if angelsmods.industries.components then
  data:extend({
    -----------------------------------------------------------------------------
    -- GRATES -------------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "grate-iron",
      enabled = true,
      category = "crafting",
      energy_required = 0.5,
      ingredients = {
        { type = "item", name = "iron-stick", amount = 2 },
      },
      results = {
        { type = "item", name = "grate-iron", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "grate-steel",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "angels-rod-steel", amount = 2 },
      },
      results = {
        { type = "item", name = "grate-steel", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "grate-aluminium",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "angels-plate-aluminium", amount = 2 },
      },
      results = {
        { type = "item", name = "grate-aluminium", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "grate-titanium",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "angels-plate-titanium", amount = 2 },
      },
      results = {
        { type = "item", name = "grate-titanium", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "grate-tungsten",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "angels-plate-tungsten", amount = 2 },
      },
      results = {
        { type = "item", name = "grate-tungsten", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CONSTRUCTION FRAMES ------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "construction-frame-1",
      enabled = true,
      category = "crafting",
      energy_required = 1 * angelsmods.industries.component_crafting_time_multiplier, --1:2 ratio to grate
      ingredients = {
        { type = "item", name = "grate-iron", amount = 1 },
        { type = "item", name = "angels-girder", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "construction-frame-1",
          amount = 2 * angelsmods.industries.component_result_multiplier,
        },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "construction-frame-2",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1.5 * angelsmods.industries.component_crafting_time_multiplier, --2:3 ratio to grate
      ingredients = {
        { type = "item", name = "grate-steel", amount = 1 },
        { type = "item", name = "angels-girder", amount = 1 },
        { type = "item", name = "angels-rivet", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "construction-frame-2",
          amount = 2 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "construction-frame-3",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2 * angelsmods.industries.component_crafting_time_multiplier, -- 3:4 ratio to grate
      ingredients = {
        { type = "item", name = "grate-aluminium", amount = 1 },
        { type = "item", name = "angels-girder", amount = 1 },
        { type = "item", name = "angels-rivet", amount = 1 },
        { type = "item", name = "angels-bracket", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "construction-frame-3",
          amount = 2 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "construction-frame-4",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3.5 * angelsmods.industries.component_crafting_time_multiplier, -- 4:7 ratio to grate
      ingredients = {
        { type = "item", name = "grate-titanium", amount = 1 },
        { type = "item", name = "angels-girder", amount = 1 },
        { type = "item", name = "angels-rivet", amount = 1 },
        { type = "item", name = "angels-bracket", amount = 1 },
        { type = "item", name = "angels-plating", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "construction-frame-4",
          amount = 2 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "construction-frame-5",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 5 * angelsmods.industries.component_crafting_time_multiplier, -- 3:5 ratio to grate
      ingredients = {
        { type = "item", name = "grate-tungsten", amount = 1 },
        { type = "item", name = "angels-girder", amount = 1 },
        { type = "item", name = "angels-rivet", amount = 1 },
        { type = "item", name = "angels-bracket", amount = 1 },
        { type = "item", name = "angels-plating", amount = 1 },
        { type = "item", name = "angels-strut", amount = 1 },
      },
      results = {
        {
          type = "item",
          name = "construction-frame-5",
          amount = 2 * angelsmods.industries.component_result_multiplier,
        },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CONSTRUCTION SUBCOMPONENTS -----------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-girder",
      subgroup = "angels-construction-grates",
      order = "f",
      enabled = true,
      category = "crafting",
      energy_required = 0.5,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-girder", amount = 1 },
      },
      allow_decomposition = true,
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-rivet",
      subgroup = "angels-construction-grates",
      order = "g",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-rivet", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-bracket",
      subgroup = "angels-construction-grates",
      order = "h",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 1.5,
      ingredients = {
        { type = "item", name = "angels-plate-aluminium", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-bracket", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-plating",
      subgroup = "angels-construction-grates",
      order = "i",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2,
      ingredients = {
        { type = "item", name = "angels-plate-titanium", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-plating", amount = 1 },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "angels-strut",
      subgroup = "angels-construction-grates",
      order = "j",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 2.5,
      ingredients = {
        { type = "item", name = "angels-plate-tungsten", amount = 1 },
      },
      results = {
        { type = "item", name = "angels-strut", amount = 1 },
      },
      icon_size = 32,
    },
    -----------------------------------------------------------------------------
    -- CONSTRUCTION COMPONENTS --------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "construction-components-girder",
      subgroup = "angels-construction-frames",
      order = "f",
      enabled = true,
      category = "crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "angels-girder", amount = 2 },
      },
      results = {
        { type = "item", name = "construction-components", amount = 2 },
      },
      allow_decomposition = true,
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/construction-components.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/girder.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "construction-components-rivet",
      subgroup = "angels-construction-frames",
      order = "g",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "angels-rivet", amount = 2 },
      },
      results = {
        { type = "item", name = "construction-components", amount = 3 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/construction-components.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/rivet.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "construction-components-bracket",
      subgroup = "angels-construction-frames",
      order = "h",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "angels-bracket", amount = 2 },
      },
      results = {
        { type = "item", name = "construction-components", amount = 4 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/construction-components.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/bracket.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "construction-components-plating",
      subgroup = "angels-construction-frames",
      order = "h",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "angels-plating", amount = 2 },
      },
      results = {
        { type = "item", name = "construction-components", amount = 5 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/construction-components.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/plating.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
    {
      type = "recipe",
      name = "construction-components-strut",
      subgroup = "angels-construction-frames",
      order = "h",
      enabled = false,
      category = "advanced-crafting",
      energy_required = 3,
      ingredients = {
        { type = "item", name = "angels-strut", amount = 2 },
      },
      results = {
        { type = "item", name = "construction-components", amount = 6 },
      },
      icons = {
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/construction-components.png",
          icon_size = 32,
        },
        {
          icon = "__angelsindustriesgraphics__/graphics/icons/strut.png",
          scale = 0.4375,
          shift = { -10, -10 },
          icon_size = 32,
        },
      },
      icon_size = 32,
    },
  })
end
