// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

library MapConfig {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "", name: "MapConfig", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x746200000000000000000000000000004d6170436f6e66696700000000000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0008020104040000000000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of ()
  Schema constant _keySchema = Schema.wrap(0x0000000000000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (uint32, uint32, bytes)
  Schema constant _valueSchema = Schema.wrap(0x000802010303c400000000000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](0);
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](3);
    fieldNames[0] = "width";
    fieldNames[1] = "height";
    fieldNames[2] = "terrain";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get width.
   */
  function getWidth() internal view returns (uint32 width) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Get width.
   */
  function _getWidth() internal view returns (uint32 width) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Set width.
   */
  function setWidth(uint32 width) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((width)), _fieldLayout);
  }

  /**
   * @notice Set width.
   */
  function _setWidth(uint32 width) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((width)), _fieldLayout);
  }

  /**
   * @notice Get height.
   */
  function getHeight() internal view returns (uint32 height) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Get height.
   */
  function _getHeight() internal view returns (uint32 height) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (uint32(bytes4(_blob)));
  }

  /**
   * @notice Set height.
   */
  function setHeight(uint32 height) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((height)), _fieldLayout);
  }

  /**
   * @notice Set height.
   */
  function _setHeight(uint32 height) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((height)), _fieldLayout);
  }

  /**
   * @notice Get terrain.
   */
  function getTerrain() internal view returns (bytes memory terrain) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = StoreSwitch.getDynamicField(_tableId, _keyTuple, 0);
    return (bytes(_blob));
  }

  /**
   * @notice Get terrain.
   */
  function _getTerrain() internal view returns (bytes memory terrain) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes memory _blob = StoreCore.getDynamicField(_tableId, _keyTuple, 0);
    return (bytes(_blob));
  }

  /**
   * @notice Set terrain.
   */
  function setTerrain(bytes memory terrain) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setDynamicField(_tableId, _keyTuple, 0, bytes((terrain)));
  }

  /**
   * @notice Set terrain.
   */
  function _setTerrain(bytes memory terrain) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setDynamicField(_tableId, _keyTuple, 0, bytes((terrain)));
  }

  /**
   * @notice Get the length of terrain.
   */
  function lengthTerrain() internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    uint256 _byteLength = StoreSwitch.getDynamicFieldLength(_tableId, _keyTuple, 0);
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * @notice Get the length of terrain.
   */
  function _lengthTerrain() internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    uint256 _byteLength = StoreCore.getDynamicFieldLength(_tableId, _keyTuple, 0);
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * @notice Get an item of terrain.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function getItemTerrain(uint256 _index) internal view returns (bytes memory) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    unchecked {
      bytes memory _blob = StoreSwitch.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 1, (_index + 1) * 1);
      return (bytes(_blob));
    }
  }

  /**
   * @notice Get an item of terrain.
   * @dev Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.
   */
  function _getItemTerrain(uint256 _index) internal view returns (bytes memory) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    unchecked {
      bytes memory _blob = StoreCore.getDynamicFieldSlice(_tableId, _keyTuple, 0, _index * 1, (_index + 1) * 1);
      return (bytes(_blob));
    }
  }

  /**
   * @notice Push a slice to terrain.
   */
  function pushTerrain(bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.pushToDynamicField(_tableId, _keyTuple, 0, bytes((_slice)));
  }

  /**
   * @notice Push a slice to terrain.
   */
  function _pushTerrain(bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.pushToDynamicField(_tableId, _keyTuple, 0, bytes((_slice)));
  }

  /**
   * @notice Pop a slice from terrain.
   */
  function popTerrain() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.popFromDynamicField(_tableId, _keyTuple, 0, 1);
  }

  /**
   * @notice Pop a slice from terrain.
   */
  function _popTerrain() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.popFromDynamicField(_tableId, _keyTuple, 0, 1);
  }

  /**
   * @notice Update a slice of terrain at `_index`.
   */
  function updateTerrain(uint256 _index, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    unchecked {
      bytes memory _encoded = bytes((_slice));
      StoreSwitch.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 1), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Update a slice of terrain at `_index`.
   */
  function _updateTerrain(uint256 _index, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    unchecked {
      bytes memory _encoded = bytes((_slice));
      StoreCore.spliceDynamicData(_tableId, _keyTuple, 0, uint40(_index * 1), uint40(_encoded.length), _encoded);
    }
  }

  /**
   * @notice Get the full data.
   */
  function get() internal view returns (uint32 width, uint32 height, bytes memory terrain) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get() internal view returns (uint32 width, uint32 height, bytes memory terrain) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(uint32 width, uint32 height, bytes memory terrain) internal {
    bytes memory _staticData = encodeStatic(width, height);

    EncodedLengths _encodedLengths = encodeLengths(terrain);
    bytes memory _dynamicData = encodeDynamic(terrain);

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(uint32 width, uint32 height, bytes memory terrain) internal {
    bytes memory _staticData = encodeStatic(width, height);

    EncodedLengths _encodedLengths = encodeLengths(terrain);
    bytes memory _dynamicData = encodeDynamic(terrain);

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(bytes memory _blob) internal pure returns (uint32 width, uint32 height) {
    width = (uint32(Bytes.getBytes4(_blob, 0)));

    height = (uint32(Bytes.getBytes4(_blob, 4)));
  }

  /**
   * @notice Decode the tightly packed blob of dynamic data using the encoded lengths.
   */
  function decodeDynamic(
    EncodedLengths _encodedLengths,
    bytes memory _blob
  ) internal pure returns (bytes memory terrain) {
    uint256 _start;
    uint256 _end;
    unchecked {
      _end = _encodedLengths.atIndex(0);
    }
    terrain = (bytes(SliceLib.getSubslice(_blob, _start, _end).toBytes()));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   * @param _encodedLengths Encoded lengths of dynamic fields.
   * @param _dynamicData Tightly packed dynamic fields.
   */
  function decode(
    bytes memory _staticData,
    EncodedLengths _encodedLengths,
    bytes memory _dynamicData
  ) internal pure returns (uint32 width, uint32 height, bytes memory terrain) {
    (width, height) = decodeStatic(_staticData);

    (terrain) = decodeDynamic(_encodedLengths, _dynamicData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(uint32 width, uint32 height) internal pure returns (bytes memory) {
    return abi.encodePacked(width, height);
  }

  /**
   * @notice Tightly pack dynamic data lengths using this table's schema.
   * @return _encodedLengths The lengths of the dynamic fields (packed into a single bytes32 value).
   */
  function encodeLengths(bytes memory terrain) internal pure returns (EncodedLengths _encodedLengths) {
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = EncodedLengthsLib.pack(bytes(terrain).length);
    }
  }

  /**
   * @notice Tightly pack dynamic (variable length) data using this table's schema.
   * @return The dynamic data, encoded into a sequence of bytes.
   */
  function encodeDynamic(bytes memory terrain) internal pure returns (bytes memory) {
    return abi.encodePacked(bytes((terrain)));
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    uint32 width,
    uint32 height,
    bytes memory terrain
  ) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(width, height);

    EncodedLengths _encodedLengths = encodeLengths(terrain);
    bytes memory _dynamicData = encodeDynamic(terrain);

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple() internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    return _keyTuple;
  }
}