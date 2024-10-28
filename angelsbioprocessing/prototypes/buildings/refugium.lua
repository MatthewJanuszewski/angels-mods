data:extend({
  -- FISH
  {
    type = "item",
    name = "bio-refugium-fish",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-fish.png",
    icon_size = 32,
    subgroup = "bio-processing-buildings-alien-a",
    order = "a",
    place_result = "bio-refugium-fish",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-refugium-fish",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-fish.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "bio-refugium-fish" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    drawing_box = { { -3.5, -4.5 }, { 3.5, 3.5 } },
    fast_replaceable_group = "bio-refugium",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "bio-refugium-fish" },
    crafting_speed = 0.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -35 },
    },
    energy_usage = "150kW",
    --ingredient_count = 4,
    animation = {
      layers = {
        {
          filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-fish-shadow.png",
          width = 288,
          height = 288,
          line_length = 1,
          frame_count = 1,
          shift = { 0, 0 },
        },
        {
          filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-fish-off.png",
          width = 288,
          height = 288,
          line_length = 1,
          frame_count = 1,
          shift = { 0, 0 },
        },
      },
    },
    working_visualisations = {
      {
        animation = {
          filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-fish.png",
          width = 288,
          height = 288,
          line_length = 7,
          frame_count = 49,
          shift = { 0, 0 },
          animation_speed = 49 / 90,
        },
      },
    },
    match_animation_speed_to_activity = false,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = { filename = "__angelsbioprocessinggraphics__/sound/aquarium.ogg", volume = 0.8 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, 3.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -1, 3.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = { { flow_direction = "output", position = { 0, -3.4 }, direction = defines.direction.north } },
      },
    },
  },

  -- PUFFER
  {
    type = "item",
    name = "bio-refugium-puffer",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-puffer.png",
    icon_size = 32,
    subgroup = "bio-processing-buildings-alien-a",
    order = "d",
    place_result = "bio-refugium-puffer",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-refugium-puffer",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/bio-refugium-puffer.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask('asm', {'elevated_rail'}),
    minable = { mining_time = 1, result = "bio-refugium-puffer" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box = { { -2.5, -3.5 }, { 2.5, 2.5 } },
    fast_replaceable_group = "bio-refugium",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "bio-refugium-puffer" },
    crafting_speed = 0.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -30 },
    },
    energy_usage = "150kW",
    --ingredient_count = 4,
    animation = {
      filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-puffer-off.png",
      width = 224,
      height = 256,
      line_length = 1,
      frame_count = 1,
      shift = { 0, -0.5 },
      animation_speed = 0.5,
    },
    working_visualisations = {
      {
        animation = {
          filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-puffer.png",
          width = 224,
          height = 256,
          line_length = 6,
          frame_count = 36,
          shift = { 0, -0.5 },
          animation_speed = 36 / 60,
        },
      },
    },
    match_animation_speed_to_activity = false,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        {
          filename = "__angelsbioprocessinggraphics__/sound/fart_1.ogg",
          volume = 1,
        },
        {
          filename = "__angelsbioprocessinggraphics__/sound/fart_2.ogg",
          volume = 1,
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 2, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { -2, 2.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = { { flow_direction = "output", position = { 1, -2.4 }, direction = defines.direction.north } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = { { flow_direction = "output", position = { -1, -2.4 }, direction = defines.direction.north } },
      },
    },
  },

  -- BITER
  {
    type = "item",
    name = "bio-refugium-biter",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-farm.png",
    icon_size = 32,
    subgroup = "bio-processing-buildings-alien-a",
    order = "e",
    place_result = "bio-refugium-biter",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-refugium-biter",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/alien-farm.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask('asm', {'elevated_rail'}),
    minable = { mining_time = 1, result = "bio-refugium-biter" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    fast_replaceable_group = "bio-refugium",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "bio-refugium-biter" },
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -25 },
    },
    energy_usage = "150kW",
    --ingredient_count = 4,
    animation = {
      filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-biter-off.png",
      width = 288,
      height = 288,
      line_length = 1,
      frame_count = 1,
      shift = { 0, 0 },
      --animation_speed = 0.5,
    },
    working_visualisations = {
      {
        animation = {
          filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-biter.png",
          width = 288,
          height = 288,
          line_length = 4,
          frame_count = 16,
          shift = { 0, 0 },
          animation_speed = 0.5 * 0.75 / 2,
        },
      },
    },
    match_animation_speed_to_activity = false,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, -3.4 }, direction = defines.direction.north } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 3.4 }, direction = defines.direction.south } },
      },
    },
  },

  -- HOGGER
  {
    type = "item",
    name = "bio-refugium-hogger",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/void.png",
    icon_size = 32,
    subgroup = "bio-processing-buildings-alien-a",
    order = "f",
    place_result = "bio-refugium-hogger",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-refugium-hogger",
    icon = "__angelsbioprocessinggraphics__/graphics/icons/void.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    collision_mask = angelsmods.functions.set_building_collision_mask('asm', {'elevated_rail'}),
    minable = { mining_time = 1, result = "bio-refugium-hogger" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    --drawing_box = {{-2.5, -3}, {2.5, 2.5}},
    fast_replaceable_group = "bio-refugium",
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    crafting_categories = { "bio-refugium-hogger" },
    crafting_speed = 0.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = -0.02 * 60 },
    },
    energy_usage = "150kW",
    --ingredient_count = 4,
    animation = {
      filename = "__angelsbioprocessinggraphics__/graphics/entity/7x7.png",
      width = 288,
      height = 288,
      line_length = 1,
      frame_count = 1,
      shift = { 0, 0 },
      --animation_speed = 0.5,
    },
    -- working_visualisation=
    -- {
    -- filename = "__angelsbioprocessinggraphics__/graphics/entity/bio-refugium/bio-refugium-puffer.png",
    -- width = 224,
    -- height = 256,
    -- line_length = 6,
    -- frame_count = 36,
    -- shift = {0, -0.5},
    -- animation_speed = 0.5,
    -- },
    match_animation_speed_to_activity = false,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, 3.4 }, direction = defines.direction.south } },
      },
    },
  },
})
