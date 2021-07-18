local show_formula = settings.startup["angels-show-chemical-formula"].value

data:extend(
{
  -- ORE
  {
    type = "item",
    name = "platinum-ore",
    icon = "__angelssmelting__/graphics/icons/ore-platinum.png",
    icon_size = 32,
    subgroup = "angels-platinum",
    order = "a",
    stack_size = 200
  },
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "processed-platinum",
    icon = "__angelssmelting__/graphics/icons/processed-platinum.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-platinum",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-platinum",
    icon = "__angelssmelting__/graphics/icons/pellet-platinum.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-platinum",
    order = "c",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-hexachloroplatinic-acid",
    localised_description = show_formula and {"tooltip-description.chemical-formula", "H[font=default-tiny-bold]6[/font]Cl[font=default-tiny-bold]6[/font]O[font=default-tiny-bold]2[/font]Pt"} or nil,
    icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, { {230,191,163}, {230,191,163}, {086,112,192,0.8}, {092,218,079,0.8} }),
    subgroup = "angels-platinum",
    order = "d",
    default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 242/255, g = 212/255, b = 194/255},
    flow_color = {r = 242/255, g = 212/255, b = 194/255},
    max_temperature = 100,
  },
  {
    type = "item",
    name = "solid-ammonium-chloroplatinate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-chloroplatinate.png",
    icon_size = 32,
    subgroup = "angels-platinum",
    order = "e",
    stack_size = 200
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "ingot-platinum",
    icon = "__angelssmelting__/graphics/icons/ingot-platinum.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-platinum",
    order = "f",
    stack_size = 200
  },
  {
    type = "item",
    name = "powder-platinum",
    icon = "__angelssmelting__/graphics/icons/powder-platinum.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-platinum",
    order = "g",
    stack_size = 200
  },
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-platinum",
    icon = "__angelssmelting__/graphics/icons/molten-platinum.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-platinum-casting",
    order = "h",
    default_temperature = 1768,
    heat_capacity = "0KJ",
    base_color = {r = 242/255, g = 212/255, b = 194/255},
    flow_color = {r = 242/255, g = 212/255, b = 194/255},
    max_temperature = 1768,
auto_barrel = false
  },
  {
    type = "item",
    name = "angels-roll-platinum",
    icon = "__angelssmelting__/graphics/icons/roll-platinum.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-platinum-casting",
    order = "i",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-coil-platinum",
    icon = "__angelssmelting__/graphics/icons/wire-coil-platinum.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "angels-platinum-casting",
    order = "j",
    stack_size = 200
  },
  -- CASTING RESULT
  {
    type = "item",
    name = "angels-plate-platinum",
    icon = "__angelssmelting__/graphics/icons/plate-platinum.png",
    icon_size = 32,
    subgroup = "angels-platinum-casting",
    order = "k",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-platinum",
    icon = "__angelssmelting__/graphics/icons/wire-platinum.png",
    icon_size = 32,
    subgroup = "angels-platinum-casting",
    order = "l",
    stack_size = 200
  },
}
)