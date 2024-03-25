// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { System } from "@latticexyz/world/src/System.sol";
import { Movable, Player, Position } from "../codegen/index.sol";
import { addressToEntityKey } from "../addressToEntityKey.sol";

contract MapSystem is System {
  function spawn(int32 x, int32 y) public {
    bytes32 player = addressToEntityKey(address(_msgSender()));
    require(!Player.get(player), "already spawned");

    Player.set(player, true);
    Position.set(player, x, y);
    Movable.set(player, true);
  }
}
