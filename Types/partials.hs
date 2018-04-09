import qualified Data.Map as Map
-- Can do partial types, like partial functions
-- Are types essentially functions then?

type IntMap v = Map.Map Int v
type MapStrings v = Map.Map v String