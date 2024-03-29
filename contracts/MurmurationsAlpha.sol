// SPDX-License-Identifier: MIT
// https://spdx.org/licenses/MIT.html

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

import { Base64 } from "./libraries/Base64.sol";

contract MurmurationsAlpha is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("Murmuration", "MURMUR") {
        console.log("Loading Murmuration Alpha contract.");
    }

    event newMurmurationMinted(address sender, uint256 tokenId);

    function mintMurmuration() public {
        uint256 newItemId = _tokenIds.current();
        require(newItemId < 7, 'No more than seven alpha murmurations may be minted.');
        _safeMint(msg.sender, newItemId);

        string memory json = Base64.encode(
            bytes(
                string(
                    abi.encodePacked(
                        '{"name": "Murmurations Alpha #',
                        uint2str(newItemId),
                        '", "description": "Murmurations Alpha #',
                        uint2str(newItemId),
                        '", "image": "https://gateway.pinata.cloud/ipfs/QmQxKAr5YGkssmFJFfaHoEDq1SeugTsrbX7SW3hfuE8rXB/alpha_',
                        uint2str(newItemId),
                        '.png"}'
                    )
                )
            )
        );

        string memory newItemURI = string(
            abi.encodePacked("data:application/json;base64,", json)
        );

        _setTokenURI(newItemId, newItemURI);
        console.log("An NFT with ID %s has been minted to %s with metadata %s", newItemId, msg.sender, newItemURI);
        
        _tokenIds.increment();
        emit newMurmurationMinted(msg.sender, newItemId);
    }

    function uint2str(uint256 _i) internal pure returns (string memory str) {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 length;
        while (j != 0) {
            length++;
            j /= 10;
        }
        bytes memory bstr = new bytes(length);
        uint256 k = length;
        j = _i;
        while (j != 0) {
            bstr[--k] = bytes1(uint8(48 + j % 10));
            j /= 10;
        }
        str = string(bstr);
    }
}