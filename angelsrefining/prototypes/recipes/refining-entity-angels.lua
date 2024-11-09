angelsmods.functions.RB.build({
  --ORE CRUSHER
  {
    type = "recipe",
    name = "burner-ore-crusher",
    localised_name = { "entity-name.burner-ore-crusher" },
    energy_required = 5,
    enabled = true,
    ingredients = {
      { type = "item", name = "crusher-0", amount = 1 },
      { type = "item", name = "stone-furnace", amount = 1 },
      { type = "item", name = "t0-gears", amount = 1 },
    },
    results = { { type = "item", name = "burner-ore-crusher", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-crusher",
    localised_name = { "entity-name.ore-crusher" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "crusher-1", amount = 1 },
      { type = "item", name = "t0-plate", amount = 3 },
      { type = "item", name = "t0-brick", amount = 3 },
      { type = "item", name = "t0-gears", amount = 2 },
    },
    results = { { type = "item", name = "ore-crusher", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-crusher-2",
    localised_name = { "entity-name.ore-crusher-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "crusher-2", amount = 1 },
      { type = "item", name = "t1-plate", amount = 3 },
      { type = "item", name = "t1-brick", amount = 3 },
      { type = "item", name = "t1-gears", amount = 2 },
    },
    results = { { type = "item", name = "ore-crusher-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-crusher-3",
    localised_name = { "entity-name.ore-crusher-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "crusher-3", amount = 1 },
      { type = "item", name = "t3-plate", amount = 3 },
      { type = "item", name = "t3-brick", amount = 3 },
      { type = "item", name = "t3-gears", amount = 2 },
    },
    results = { { type = "item", name = "ore-crusher-3", amount = 1 } },
  },
  --ORE FLOATATION CELL
  {
    type = "recipe",
    name = "ore-floatation-cell",
    localised_name = { "entity-name.ore-floatation-cell" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cell-1", amount = 1 },
      { type = "item", name = "t2-plate", amount = 4 },
      { type = "item", name = "t2-circuit", amount = 8 },
      { type = "item", name = "t2-pipe", amount = 4 },
      { type = "item", name = "t2-brick", amount = 8 },
    },
    results = { { type = "item", name = "ore-floatation-cell", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-floatation-cell-2",
    localised_name = { "entity-name.ore-floatation-cell-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cell-2", amount = 1 },
      { type = "item", name = "t3-plate", amount = 4 },
      { type = "item", name = "t3-circuit", amount = 8 },
      { type = "item", name = "t3-pipe", amount = 4 },
      { type = "item", name = "t3-brick", amount = 8 },
    },
    results = { { type = "item", name = "ore-floatation-cell-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-floatation-cell-3",
    localised_name = { "entity-name.ore-floatation-cell-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cell-3", amount = 1 },
      { type = "item", name = "t4-plate", amount = 4 },
      { type = "item", name = "t4-circuit", amount = 8 },
      { type = "item", name = "t4-pipe", amount = 4 },
      { type = "item", name = "t4-brick", amount = 8 },
    },
    results = { { type = "item", name = "ore-floatation-cell-3", amount = 1 } },
  },
  --ORE LEACHING PLANT
  {
    type = "recipe",
    name = "ore-leaching-plant",
    localised_name = { "entity-name.ore-leaching-plant" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "leach-1", amount = 1 },
      { type = "item", name = "t3-plate", amount = 4 },
      { type = "item", name = "t3-circuit", amount = 8 },
      { type = "item", name = "t3-pipe", amount = 4 },
      { type = "item", name = "t3-brick", amount = 8 },
    },
    results = { { type = "item", name = "ore-leaching-plant", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-leaching-plant-2",
    localised_name = { "entity-name.ore-leaching-plant-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "leach-2", amount = 1 },
      { type = "item", name = "t4-plate", amount = 4 },
      { type = "item", name = "t4-circuit", amount = 8 },
      { type = "item", name = "t4-pipe", amount = 4 },
      { type = "item", name = "t4-brick", amount = 8 },
    },
    results = { { type = "item", name = "ore-leaching-plant-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-leaching-plant-3",
    localised_name = { "entity-name.ore-leaching-plant-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "leach-3", amount = 1 },
      { type = "item", name = "t5-plate", amount = 4 },
      { type = "item", name = "t5-circuit", amount = 8 },
      { type = "item", name = "t5-pipe", amount = 4 },
      { type = "item", name = "t5-brick", amount = 8 },
    },
    results = { { type = "item", name = "ore-leaching-plant-3", amount = 1 } },
  },
  --ORE REFINERY
  {
    type = "recipe",
    name = "ore-refinery",
    localised_name = { "entity-name.ore-refinery" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oreref-1", amount = 1 },
      { type = "item", name = "t4-plate", amount = 12 },
      { type = "item", name = "t4-circuit", amount = 12 },
      { type = "item", name = "t4-brick", amount = 20 },
    },
    results = { { type = "item", name = "ore-refinery", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-refinery-2",
    localised_name = { "entity-name.ore-refinery-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oreref-2", amount = 1 },
      { type = "item", name = "t5-plate", amount = 12 },
      { type = "item", name = "t5-circuit", amount = 12 },
      { type = "item", name = "t5-brick", amount = 20 },
    },
    results = { { type = "item", name = "ore-refinery-2", amount = 1 } },
  },
  --ORE SORTING FACILITY
  {
    type = "recipe",
    name = "ore-sorting-facility",
    localised_name = { "entity-name.ore-sorting-facility" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sorter-1", amount = 1 },
      { type = "item", name = "t0-plate", amount = 12 },
      { type = "item", name = "t0-circuit", amount = 12 },
      { type = "item", name = "t0-brick", amount = 12 },
      { type = "item", name = "t0-gears", amount = 8 },
    },
    results = { { type = "item", name = "ore-sorting-facility", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-sorting-facility-2",
    localised_name = { "entity-name.ore-sorting-facility-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sorter-2", amount = 1 },
      { type = "item", name = "t1-plate", amount = 12 },
      { type = "item", name = "t1-circuit", amount = 12 },
      { type = "item", name = "t1-brick", amount = 12 },
      { type = "item", name = "t1-gears", amount = 8 },
    },
    results = { { type = "item", name = "ore-sorting-facility-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-sorting-facility-3",
    localised_name = { "entity-name.ore-sorting-facility-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sorter-3", amount = 1 },
      { type = "item", name = "t3-plate", amount = 12 },
      { type = "item", name = "t3-circuit", amount = 12 },
      { type = "item", name = "t3-brick", amount = 12 },
      { type = "item", name = "t3-gears", amount = 8 },
    },
    results = { { type = "item", name = "ore-sorting-facility-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-sorting-facility-4",
    localised_name = { "entity-name.ore-sorting-facility-4" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sorter-4", amount = 1 },
      { type = "item", name = "t4-plate", amount = 12 },
      { type = "item", name = "t4-circuit", amount = 12 },
      { type = "item", name = "t4-brick", amount = 12 },
      { type = "item", name = "t4-gears", amount = 8 },
    },
    results = { { type = "item", name = "ore-sorting-facility-4", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-sorting-facility-5",
    localised_name = { "entity-name.ore-sorting-facility-5" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "sorter-5", amount = 1 },
      { type = "item", name = "t5-plate", amount = 12 },
      { type = "item", name = "t5-circuit", amount = 12 },
      { type = "item", name = "t5-brick", amount = 12 },
      { type = "item", name = "t5-gears", amount = 8 },
    },
    results = { { type = "item", name = "ore-sorting-facility-5", amount = 1 } },
  },
  --FILTRATION UNIT
  {
    type = "recipe",
    name = "filtration-unit",
    localised_name = { "entity-name.filtration-unit" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "filter-1", amount = 1 },
      { type = "item", name = "t1-plate", amount = 2 },
      { type = "item", name = "t1-circuit", amount = 5 },
      { type = "item", name = "t1-pipe", amount = 8 },
      { type = "item", name = "t1-brick", amount = 5 },
    },
    results = { { type = "item", name = "filtration-unit", amount = 1 } },
  },
  {
    type = "recipe",
    name = "filtration-unit-2",
    localised_name = { "entity-name.filtration-unit-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "filter-2", amount = 1 },
      { type = "item", name = "t3-plate", amount = 2 },
      { type = "item", name = "t3-circuit", amount = 5 },
      { type = "item", name = "t3-pipe", amount = 8 },
      { type = "item", name = "t3-brick", amount = 5 },
    },
    results = { { type = "item", name = "filtration-unit-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "filtration-unit-3",
    localised_name = { "entity-name.filtration-unit-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "filter-3", amount = 1 },
      { type = "item", name = "t4-plate", amount = 2 },
      { type = "item", name = "t4-circuit", amount = 5 },
      { type = "item", name = "t4-pipe", amount = 8 },
      { type = "item", name = "t4-brick", amount = 5 },
    },
    results = { { type = "item", name = "filtration-unit-3", amount = 1 } },
  },
  --CRYSTALLIZER
  {
    type = "recipe",
    name = "crystallizer",
    localised_name = { "entity-name.crystallizer" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cryst-1", amount = 1 },
      { type = "item", name = "t1-plate", amount = 10 },
      { type = "item", name = "t1-circuit", amount = 5 },
      { type = "item", name = "t1-pipe", amount = 5 },
      { type = "item", name = "t1-brick", amount = 10 },
    },
    results = { { type = "item", name = "crystallizer", amount = 1 } },
  },
  {
    type = "recipe",
    name = "crystallizer-2",
    localised_name = { "entity-name.crystallizer-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cryst-2", amount = 1 },
      { type = "item", name = "t3-plate", amount = 10 },
      { type = "item", name = "t3-circuit", amount = 5 },
      { type = "item", name = "t3-pipe", amount = 5 },
      { type = "item", name = "t3-brick", amount = 10 },
    },
    results = { { type = "item", name = "crystallizer-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "crystallizer-3",
    localised_name = { "entity-name.crystallizer-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cryst-3", amount = 1 },
      { type = "item", name = "t4-plate", amount = 10 },
      { type = "item", name = "t4-circuit", amount = 5 },
      { type = "item", name = "t4-pipe", amount = 5 },
      { type = "item", name = "t4-brick", amount = 10 },
    },
    results = { { type = "item", name = "crystallizer-3", amount = 1 } },
  },
  --LIQUIFIER
  {
    type = "recipe",
    name = "liquifier",
    localised_name = { "entity-name.liquifier" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "liqui-1", amount = 1 },
      { type = "item", name = "t0-plate", amount = 2 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-pipe", amount = 2 },
      { type = "item", name = "t0-brick", amount = 2 },
    },
    results = { { type = "item", name = "liquifier", amount = 1 } },
  },
  {
    type = "recipe",
    name = "liquifier-2",
    localised_name = { "entity-name.liquifier-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "liqui-2", amount = 1 },
      { type = "item", name = "t2-plate", amount = 2 },
      { type = "item", name = "t2-circuit", amount = 2 },
      { type = "item", name = "t2-pipe", amount = 2 },
      { type = "item", name = "t2-brick", amount = 2 },
    },
    results = { { type = "item", name = "liquifier-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "liquifier-3",
    localised_name = { "entity-name.liquifier-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "liqui-3", amount = 1 },
      { type = "item", name = "t3-plate", amount = 2 },
      { type = "item", name = "t3-circuit", amount = 2 },
      { type = "item", name = "t3-pipe", amount = 2 },
      { type = "item", name = "t3-brick", amount = 2 },
    },
    results = { { type = "item", name = "liquifier-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "liquifier-4",
    localised_name = { "entity-name.liquifier-4" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "liqui-4", amount = 1 },
      { type = "item", name = "t4-plate", amount = 2 },
      { type = "item", name = "t4-circuit", amount = 2 },
      { type = "item", name = "t4-pipe", amount = 2 },
      { type = "item", name = "t4-brick", amount = 2 },
    },
    results = { { type = "item", name = "liquifier-4", amount = 1 } },
  },
  --THERMAL EXTRACTOR
  {
    type = "recipe",
    name = "thermal-bore",
    localised_name = { "entity-name.thermal-bore" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "thermal-1", amount = 1 },
      { type = "item", name = "t2-plate", amount = 6 },
      { type = "item", name = "t2-circuit", amount = 4 },
      { type = "item", name = "t2-pipe", amount = 4 },
      { type = "item", name = "t2-brick", amount = 4 },
      { type = "item", name = "t2-gears", amount = 4 },
    },
    results = { { type = "item", name = "thermal-bore", amount = 1 } },
  },
  {
    type = "recipe",
    name = "thermal-extractor",
    localised_name = { "entity-name.thermal-extractor" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "thermal-2", amount = 1 },
      { type = "item", name = "t3-plate", amount = 6 },
      { type = "item", name = "t3-circuit", amount = 4 },
      { type = "item", name = "t3-pipe", amount = 4 },
      { type = "item", name = "t3-brick", amount = 4 },
      { type = "item", name = "t3-gears", amount = 4 },
    },
    results = { { type = "item", name = "thermal-extractor", amount = 1 } },
  },
  --HYDRO PLANT
  {
    type = "recipe",
    name = "hydro-plant",
    localised_name = { "entity-name.hydro-plant" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "t0-plate", amount = 4 },
      { type = "item", name = "t0-circuit", amount = 12 },
      { type = "item", name = "t0-pipe", amount = 16 },
      { type = "item", name = "t0-brick", amount = 12 },
    },
    results = { { type = "item", name = "hydro-plant", amount = 1 } },
  },
  {
    type = "recipe",
    name = "hydro-plant-2",
    localised_name = { "entity-name.hydro-plant-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "treatment-1", amount = 1 },
      { type = "item", name = "t1-plate", amount = 4 },
      { type = "item", name = "t1-circuit", amount = 12 },
      { type = "item", name = "t1-pipe", amount = 16 },
      { type = "item", name = "t1-brick", amount = 12 },
    },
    results = { { type = "item", name = "hydro-plant-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "hydro-plant-3",
    localised_name = { "entity-name.hydro-plant-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "treatment-2", amount = 1 },
      { type = "item", name = "t3-plate", amount = 4 },
      { type = "item", name = "t3-circuit", amount = 12 },
      { type = "item", name = "t3-pipe", amount = 16 },
      { type = "item", name = "t3-brick", amount = 12 },
    },
    results = { { type = "item", name = "hydro-plant-3", amount = 1 } },
  },
  --SALINATION PLANT
  {
    type = "recipe",
    name = "salination-plant",
    localised_name = { "entity-name.salination-plant" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "salination-1", amount = 1 },
      { type = "item", name = "t3-plate", amount = 14 },
      { type = "item", name = "t3-circuit", amount = 12 },
      { type = "item", name = "t3-pipe", amount = 8 },
      { type = "item", name = "t3-brick", amount = 15 },
    },
    results = { { type = "item", name = "salination-plant", amount = 1 } },
  },
  {
    type = "recipe",
    name = "salination-plant-2",
    localised_name = { "entity-name.salination-plant-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "salination-2", amount = 1 },
      { type = "item", name = "t4-plate", amount = 14 },
      { type = "item", name = "t4-circuit", amount = 12 },
      { type = "item", name = "t4-pipe", amount = 8 },
      { type = "item", name = "t4-brick", amount = 15 },
    },
    results = { { type = "item", name = "salination-plant-2", amount = 1 } },
  },
  --WASHING PLANT
  {
    type = "recipe",
    name = "washing-plant",
    localised_name = { "entity-name.washing-plant" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "wash-1", amount = 1 },
      { type = "item", name = "t0-plate", amount = 4 },
      { type = "item", name = "t0-circuit", amount = 4 },
      { type = "item", name = "t0-pipe", amount = 9 },
      { type = "item", name = "t0-brick", amount = 5 },
    },
    results = { { type = "item", name = "washing-plant", amount = 1 } },
  },
  {
    type = "recipe",
    name = "washing-plant-2",
    localised_name = { "entity-name.washing-plant-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "wash-2", amount = 1 },
      { type = "item", name = "t2-plate", amount = 4 },
      { type = "item", name = "t2-circuit", amount = 4 },
      { type = "item", name = "t2-pipe", amount = 9 },
      { type = "item", name = "t2-brick", amount = 5 },
    },
    results = { { type = "item", name = "washing-plant-2", amount = 1 } },
  },
  --SEAFLOOR PUMP
  {
    type = "recipe",
    name = "seafloor-pump",
    localised_name = { "entity-name.seafloor-pump" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "t0-plate", amount = 2 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-pipe", amount = 2 },
    },
    results = { { type = "item", name = "seafloor-pump", amount = 1 } },
  },
  --SEA PUMP
  {
    type = "recipe",
    name = "sea-pump",
    localised_name = { "entity-name.sea-pump" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "waterpump-2", amount = 1 },
      { type = "item", name = "t3-plate", amount = 2 },
      { type = "item", name = "t3-circuit", amount = 5 },
      { type = "item", name = "t3-brick", amount = 6 },
      { type = "item", name = "t3-pipe", amount = 4 },
    },
    results = { { type = "item", name = "sea-pump", amount = 1 } },
  },
  --LAND PUMP
  {
    type = "recipe",
    name = "ground-water-pump",
    localised_name = { "entity-name.ground-water-pump" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "t0-brick", amount = 1 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-pipe", amount = 2 },
    },
    results = { { type = "item", name = "ground-water-pump", amount = 1 } },
  },
  --CLARIFIER
  {
    type = "recipe",
    name = "clarifier",
    localised_name = { "entity-name.clarifier" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "t0-plate", amount = 4 },
      { type = "item", name = "t0-circuit", amount = 4 },
      { type = "item", name = "t0-pipe", amount = 11 },
      { type = "item", name = "t0-brick", amount = 6 },
    },
    results = { { type = "item", name = "clarifier", amount = 1 } },
  },
  --BARRELING PUMP
  {
    type = "recipe",
    name = "barreling-pump",
    localised_name = { "entity-name.barreling-pump" },
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "t1-plate", amount = 2 },
      { type = "item", name = "t1-circuit", amount = 2 },
      { type = "item", name = "t1-pipe", amount = 2 },
      { type = "item", name = "t1-gears", amount = 3 },
    },
    results = { { type = "item", name = "barreling-pump", amount = 1 } },
  },
  --ORE POWDERIZER
  {
    type = "recipe",
    name = "ore-powderizer",
    localised_name = { "entity-name.ore-powderizer" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "orepowder-1", amount = 1 },
      { type = "item", name = "t2-plate", amount = 1 },
      { type = "item", name = "t2-brick", amount = 1 },
      { type = "item", name = "t2-gears", amount = 1 },
    },
    results = { { type = "item", name = "ore-powderizer", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-powderizer-2",
    localised_name = { "entity-name.ore-powderizer-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "orepowder-2", amount = 1 },
      { type = "item", name = "t3-plate", amount = 1 },
      { type = "item", name = "t3-gears", amount = 1 },
      { type = "item", name = "t3-brick", amount = 1 },
    },
    results = { { type = "item", name = "ore-powderizer-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "ore-powderizer-3",
    localised_name = { "entity-name.ore-powderizer-3" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "orepowder-3", amount = 1 },
      { type = "item", name = "t4-plate", amount = 1 },
      { type = "item", name = "t4-gears", amount = 1 },
      { type = "item", name = "t4-brick", amount = 1 },
    },
    results = { { type = "item", name = "ore-powderizer-3", amount = 1 } },
  },
  --ELECTRO WHINNING CELL
  {
    type = "recipe",
    name = "electro-whinning-cell",
    localised_name = { "entity-name.electro-whinning-cell" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oreelectro-1", amount = 1 },
      { type = "item", name = "t4-plate", amount = 4 },
      { type = "item", name = "t4-circuit", amount = 8 },
      { type = "item", name = "t4-brick", amount = 4 },
      { type = "item", name = "t4-pipe", amount = 6 },
    },
    results = { { type = "item", name = "electro-whinning-cell", amount = 1 } },
  },
  {
    type = "recipe",
    name = "electro-whinning-cell-2",
    localised_name = { "entity-name.electro-whinning-cell-2" },
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "oreelectro-2", amount = 1 },
      { type = "item", name = "t5-plate", amount = 4 },
      { type = "item", name = "t5-circuit", amount = 8 },
      { type = "item", name = "t5-brick", amount = 4 },
      { type = "item", name = "t5-pipe", amount = 6 },
    },
    results = { { type = "item", name = "electro-whinning-cell-2", amount = 1 } },
  },
})
