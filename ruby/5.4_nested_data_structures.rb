# 5.4 Nested Data Structures
# Release 2: Design and Build a Nested Data Structure
# In phase-0-tracks/ruby/nested_data_structures.rb, design and build a nested data structure to represent a real-world construct. You can choose the construct: Is it a highway full of cars full of people? A classroom full of desks full of supplies? A fashion show with multiple runways featuring multiple models? Build something that will use a mix of hashes and arrays.
# Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.


# nested data structure construct derived from <http://hegel.net/en/e32.htm>
# 'objective spirit (science of the interpersonal) or philosophy of right'
right = {
  rights: {
    property: {
      possession: ['seizure', 'forming', 'designation'],
      usage: [],
      alienation: []
    },
    contract: {
      gift: ['donation', 'borrow', 'given service'],
      exchange: ['exchange', 'letting', 'wage contract'],
      pledging: []
    },
    wrong: {
      injustice: [],
      fraud: [],
      coercion: []
    }
  },
  morality: {
    action: {
      purpose: [],
      deed: [],
      guilt: []
    },
    imputation: {
      intention: [],
      wellbeing: [],
      emergency: []
    },
    good: {
      welfare: [],
      duty: [],
      conscience: []
    }
  },
  ethics: {
    family: {
      marriage: [],
      capital: [],
      dissolution: ['divorce', 'child education', 'death (will & testament']
    },
    civil_society: {
      economy: ['needs & satisfactions', 'work', 'occupations'],
      administration: ['valid right', 'written law', 'court'],
      institutions: ['police', 'associations/corporations']
    },
    state: {
      constitutional_law: ['constitution', 'military'],
      international_law: [],
      world_history: ['oriental world (one free)', 'classical antiquity (some free)', 'christian world (all free)']
    }
  }
}


# 3 example types of access
# previously used built-in methods
# strings: .swapcase, .insert, .center, .upcase, <<, .prepend, .chop, .slice(n..n), .split, .join, .ord, .count, .sub, .gsub, .each_char, .reverse, .capitalize
# arrays: .each, .map, .delete_if, keep_if, select, reject, .()!
# hashes: .delete_if, .keep_if, .select!, .reject!

# hash built-in methods
p right[:ethics][:state][:world_history].flatten
# => ["oriental world (one free)", "classical antiquity (some free", "christian world (all free"]

p right[:ethics][:state][:world_history][0].replace('ancient world (one free)')
# => "ancient world (one free)"

p right.dig(:ethics, :state, :world_history)
# => ["oriental world (one free)", "classical antiquity (some free", "christian world (all free"]

p right[:ethics][:state].to_a
# => [[:constitutional_law, ["constitution", "military"]], [:international_law, []], [:world_history, ["oriental world (one free)", "classical antiquity (some free", "christian world (all free"]]]

p right[:ethics][:state].store("new key", "new value")
# => right = { ... "new key"=>"new value"}}}