describe("tarot", function()
  it("can be required", function()
    require "tarot"
  end)

  it("has a significance for each cards", function()
    local cards = require("tarot").get_tarots()
    for _, card_stuff in pairs(cards) do
      assert.Not.Nil(card_stuff.significance)
    end
  end)

  it("has a valid arcana type for every card", function()
    local cards = require("tarot").get_tarots()
    for _, card_stuff in pairs(cards) do
      local arcana_type = card_stuff.arcana_type
      local is_valid = (arcana_type == "Major") or (arcana_type == "Minor")
      assert(is_valid)
    end
  end)

  it("has 78 cards", function()
    local cards = require("tarot").get_tarots()
    local count = 0
    for _, _ in pairs(cards) do
        count = count + 1
    end
    assert.equal(count, 78)
  end)
end)
