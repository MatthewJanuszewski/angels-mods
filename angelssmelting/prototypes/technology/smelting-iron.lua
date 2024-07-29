data:extend({
  {
    type = "technology",
    name = "angels-iron-smelting-1",
    localised_name = { "technology-name.angels-iron-metallurgy" },
    localised_description = { "technology-description.angels-iron-metallurgy" },
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "angels-metallurgy-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "iron-ore-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-1",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-iron",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-iron-smelting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-2",
      "ore-processing-1",
      "angels-iron-smelting-1",
      "angels-coal-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "iron-ore-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "processed-iron-smelting",
      },
      {
        type = "unlock-recipe",
        recipe = "powder-iron",
      },
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-iron-casting-2",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-2",
      "strand-casting-1",
      "angels-iron-smelting-1",
      "angels-manganese-smelting-1",
      "angels-silicon-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-3",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-iron-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-roll-iron-converting",
      },
      {
        type = "unlock-recipe",
        recipe = "rod-stack-iron-casting",
      },
      {
        type = "unlock-recipe",
        recipe = "angels-rod-stack-iron-converting",
      },
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-iron-smelting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/smelting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "ore-processing-2",
      "angels-iron-smelting-2",
      "angels-stone-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "iron-processed-processing",
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-iron-smelting",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-iron-casting-3",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      --"angels-metallurgy-3",
      "strand-casting-2",
      "angels-iron-casting-2",
      "angels-nickel-smelting-1",
      "angels-cobalt-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-4",
      },
      {
        type = "unlock-recipe",
        recipe = "roll-iron-casting-fast",
      },
      {
        type = "unlock-recipe",
        recipe = "rod-stack-iron-casting-fast",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
  {
    type = "technology",
    name = "angels-iron-casting-4",
    icon = "__angelssmeltinggraphics__/graphics/technology/casting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "angels-metallurgy-4",
      "angels-iron-casting-3",
      "angels-chrome-smelting-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "molten-iron-smelting-5",
      },
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "c-a",
  },
})
