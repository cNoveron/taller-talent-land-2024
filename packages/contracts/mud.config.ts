import { mudConfig } from "@latticexyz/world/register";

export default mudConfig({
  tables: {
    Counter: {
      keySchema: {},
      valueSchema: "uint32",
    },
    Movable: 'bool',
    Player: 'bool',
    Position: {
	dataStruct: false,
	valueSchema: { x: 'uint32', y: 'uint32' } 
    },
  },
});
