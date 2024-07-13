angelsmods.functions.RB.build({
  {
    type = "recipe",
    name = "temperate-upgrade",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "token-bio", amount = 5 },
      { type = "item", name = "t2-circuit", amount = 1 },
      { type = "item", name = "t2-brick", amount = 1 },
      { type = "item", name = "t2-pipe", amount = 1 },
    },
    results = {{ type = "item", name = "temperate-upgrade", amount = 1 }},
  },
  {
    type = "recipe",
    name = "desert-upgrade",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "token-bio", amount = 5 },
      { type = "item", name = "t2-circuit", amount = 1 },
      { type = "item", name = "t2-brick", amount = 2 },
    },
    results = {{ type = "item", name = "desert-upgrade", amount = 1 }},
  },
  {
    type = "recipe",
    name = "swamp-upgrade",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "token-bio", amount = 5 },
      { type = "item", name = "t2-circuit", amount = 1 },
      { type = "item", name = "t2-pipe", amount = 2 },
    },
    results = {{ type = "item", name = "swamp-upgrade", amount = 1 }},
  },
  --ALGAE FARM
  {
    type = "recipe",
    name = "algae-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "algaefarm-1", amount = 1 },
      { type = "item", name = "t0-plate", amount = 6 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-brick", amount = 6 },
      { type = "item", name = "t0-pipe", amount = 9 },
    },
    results = {{ type = "item", name = "algae-farm", amount = 1 }},
  },
  {
    type = "recipe",
    name = "algae-farm-2",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "algaefarm-2", amount = 1 },
      { type = "item", name = "t0-plate", amount = 11 },
      { type = "item", name = "t0-circuit", amount = 4 },
      { type = "item", name = "t0-brick", amount = 11 },
      { type = "item", name = "t0-pipe", amount = 18 },
    },
    results = {{ type = "item", name = "algae-farm-2", amount = 1 }},
  },
  {
    type = "recipe",
    name = "algae-farm-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "algaefarm-3", amount = 1 },
      { type = "item", name = "t2-plate", amount = 11 },
      { type = "item", name = "t2-circuit", amount = 4 },
      { type = "item", name = "t2-brick", amount = 11 },
      { type = "item", name = "t2-pipe", amount = 18 },
    },
    results = {{ type = "item", name = "algae-farm-3", amount = 1 }},
  },
  {
    type = "recipe",
    name = "algae-farm-4",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "algaefarm-4", amount = 1 },
      { type = "item", name = "t3-plate", amount = 11 },
      { type = "item", name = "t3-circuit", amount = 4 },
      { type = "item", name = "t3-brick", amount = 11 },
      { type = "item", name = "t3-pipe", amount = 18 },
    },
    results = {{ type = "item", name = "algae-farm-4", amount = 1 }},
  },
  --CROP FARM
  {
    type = "recipe",
    name = "crop-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cropfarm-1", amount = 1 },
      { type = "item", name = "t1-plate", amount = 8 },
      { type = "item", name = "t1-circuit", amount = 2 },
      { type = "item", name = "t1-brick", amount = 9 },
      { type = "item", name = "t1-pipe", amount = 3 },
    },
    results = {{ type = "item", name = "crop-farm", amount = 1 }},
  },
  {
    type = "recipe",
    name = "temperate-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cropfarm-2", amount = 1 },
      { type = "item", name = "temperate-upgrade", amount = 1 },
      { type = "item", name = "t3-plate", amount = 8 },
      { type = "item", name = "t3-circuit", amount = 2 },
      { type = "item", name = "t3-brick", amount = 9 },
      { type = "item", name = "t3-pipe", amount = 3 },
    },
    results = {{ type = "item", name = "temperate-farm", amount = 1 }},
  },
  {
    type = "recipe",
    name = "desert-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cropfarm-2", amount = 1 },
      { type = "item", name = "desert-upgrade", amount = 1 },
      { type = "item", name = "t3-plate", amount = 8 },
      { type = "item", name = "t3-circuit", amount = 2 },
      { type = "item", name = "t3-brick", amount = 9 },
      { type = "item", name = "t3-pipe", amount = 3 },
    },
    results = {{ type = "item", name = "desert-farm", amount = 1 }},
  },
  {
    type = "recipe",
    name = "swamp-farm",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "cropfarm-2", amount = 1 },
      { type = "item", name = "swamp-upgrade", amount = 1 },
      { type = "item", name = "t3-plate", amount = 8 },
      { type = "item", name = "t3-circuit", amount = 2 },
      { type = "item", name = "t3-brick", amount = 9 },
      { type = "item", name = "t3-pipe", amount = 3 },
    },
    results = {{ type = "item", name = "swamp-farm", amount = 1 }},
  },
  --COMPOSTER
  {
    type = "recipe",
    name = "composter",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "compo-1", amount = 1 },
      { type = "item", name = "t0-plate", amount = 2 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-brick", amount = 2 },
      { type = "item", name = "t0-gears", amount = 2 },
    },
    results = {{ type = "item", name = "composter", amount = 1 }},
  },
  --SEED EXTRACTOR
  {
    type = "recipe",
    name = "seed-extractor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "seedex-1", amount = 1 },
      { type = "item", name = "t1-plate", amount = 1 },
      { type = "item", name = "t1-circuit", amount = 4 },
      { type = "item", name = "t1-brick", amount = 1 },
      { type = "item", name = "t1-gears", amount = 2 },
    },
    results = {{ type = "item", name = "seed-extractor", amount = 1 }},
  },
  --PRESS
  {
    type = "recipe",
    name = "bio-press",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "biopress-1", amount = 1 },
      { type = "item", name = "t2-plate", amount = 2 },
      { type = "item", name = "t2-circuit", amount = 2 },
      { type = "item", name = "t2-brick", amount = 1 },
      { type = "item", name = "t2-pipe", amount = 1 },
      { type = "item", name = "t2-gears", amount = 2 },
    },
    results = {{ type = "item", name = "bio-press", amount = 1 }},
  },
  --PROCESSOR
  {
    type = "recipe",
    name = "bio-processor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "biopro-1", amount = 1 },
      { type = "item", name = "t1-plate", amount = 5 },
      { type = "item", name = "t1-circuit", amount = 8 },
      { type = "item", name = "t1-brick", amount = 5 },
      { type = "item", name = "t1-gears", amount = 4 },
    },
    results = {{ type = "item", name = "bio-processor", amount = 1 }},
  },
  --NUTRIENT EXTRACTOR
  {
    type = "recipe",
    name = "nutrient-extractor",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "nutrientex-1", amount = 1 },
      { type = "item", name = "t2-plate", amount = 1 },
      { type = "item", name = "t2-circuit", amount = 2 },
      { type = "item", name = "t2-brick", amount = 1 },
      { type = "item", name = "t2-pipe", amount = 2 },
      { type = "item", name = "t2-gears", amount = 2 },
    },
    results = {{ type = "item", name = "nutrient-extractor", amount = 1 }},
  },
  --ABORETUM
  {
    type = "recipe",
    name = "bio-generator-temperate-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "temperate-tree", amount = 1 },
      { type = "item", name = "t0-plate", amount = 2 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-brick", amount = 1 },
      { type = "item", name = "t0-pipe", amount = 3 },
    },
    results = {{ type = "item", name = "bio-generator-temperate-1", amount = 1 }},
  },
  {
    type = "recipe",
    name = "bio-generator-swamp-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "swamp-tree", amount = 1 },
      { type = "item", name = "t0-plate", amount = 2 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-brick", amount = 1 },
      { type = "item", name = "t0-pipe", amount = 3 },
    },
    results = {{ type = "item", name = "bio-generator-swamp-1", amount = 1 }},
  },
  {
    type = "recipe",
    name = "bio-generator-desert-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "desert-tree", amount = 1 },
      { type = "item", name = "t0-plate", amount = 2 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-brick", amount = 1 },
      { type = "item", name = "t0-pipe", amount = 3 },
    },
    results = {{ type = "item", name = "bio-generator-desert-1", amount = 1 }},
  },
  --ARBORETUM
  {
    type = "recipe",
    name = "bio-arboretum-1",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "arboretum-1", amount = 1 },
      { type = "item", name = "t0-plate", amount = 6 },
      { type = "item", name = "t0-circuit", amount = 2 },
      { type = "item", name = "t0-brick", amount = 6 },
      { type = "item", name = "t0-pipe", amount = 8 },
    },
    results = {{ type = "item", name = "bio-arboretum-1", amount = 1 }},
  },
  --REFUGIUM
  {
    type = "recipe",
    name = "bio-refugium-puffer",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "puffer-1", amount = 1 },
      { type = "item", name = "t3-plate", amount = 4 },
      { type = "item", name = "t3-circuit", amount = 4 },
      { type = "item", name = "t3-brick", amount = 3 },
      { type = "item", name = "t3-pipe", amount = 11 },
    },
    results = {{ type = "item", name = "bio-refugium-puffer", amount = 1 }},
  },
  {
    type = "recipe",
    name = "bio-refugium-hogger",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "t1-bio", amount = 1 },
      { type = "item", name = "t1-plate", amount = 4 },
      { type = "item", name = "t1-circuit", amount = 4 },
      { type = "item", name = "t1-brick", amount = 3 },
      { type = "item", name = "t1-pipe", amount = 11 },
    },
    results = {{ type = "item", name = "bio-refugium-hogger", amount = 1 }},
  },
  {
    type = "recipe",
    name = "bio-refugium-fish",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "fish-1", amount = 1 },
      { type = "item", name = "t2-plate", amount = 2 },
      { type = "item", name = "t2-circuit", amount = 5 },
      { type = "item", name = "t2-brick", amount = 4 },
      { type = "item", name = "t2-pipe", amount = 25 },
    },
    results = {{ type = "item", name = "bio-refugium-fish", amount = 1 }},
  },
  {
    type = "recipe",
    name = "bio-refugium-biter",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "biter-1", amount = 1 },
      { type = "item", name = "t4-plate", amount = 10 },
      { type = "item", name = "t4-circuit", amount = 4 },
      { type = "item", name = "t4-brick", amount = 19 },
      { type = "item", name = "t4-pipe", amount = 11 },
    },
    results = {{ type = "item", name = "bio-refugium-biter", amount = 1 }},
  },
  --PROCESSING
  {
    type = "recipe",
    name = "bio-hatchery",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "hatch-1", amount = 1 },
      { type = "item", name = "t3-plate", amount = 2 },
      { type = "item", name = "t3-circuit", amount = 4 },
      { type = "item", name = "t3-brick", amount = 2 },
    },
    results = {{ type = "item", name = "bio-hatchery", amount = 1 }},
  },
  {
    type = "recipe",
    name = "bio-butchery",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "butch-1", amount = 1 },
      { type = "item", name = "t2-plate", amount = 3 },
      { type = "item", name = "t2-circuit", amount = 1 },
      { type = "item", name = "t2-brick", amount = 2 },
      { type = "item", name = "t2-gears", amount = 2 },
    },
    results = {{ type = "item", name = "bio-butchery", amount = 1 }},
  },
})
