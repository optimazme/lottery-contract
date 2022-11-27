// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import ".../VRF.sol";

error Pass_NotPurchased();
error NftTransfer_Failed();

// This is the lottery contract which allows the puchaser of a maze pass to automatically enter into
contract nftLotteryForTheMazePassPurchaser { 

    // Identifying whether a pass has been purchased
    bool private _passHasBeenPurchased;

    /* State Variables */
    address payable[] private lotteryPlayers;

    /*Events*/
    event LotteryEntered(address indexed player);

    constructor(bool passHasBeenPurchased) {
        _passHasBeenPurchased = passHasBeenPurchased;
    }

    // We are checking whether a user has purchased a pass to join the lottery
    // I think it needs to be public 
    function enterLottery(bool) public payable {
        if  (bool passHasBeenPurchased) != "Yes" {
            revert User_HasNotPurchasedThePass();
        }
        lotteryPlayers.push(payable(msg.sender));
        emit LotteryEntered(msg.sender);
    }

    // For the sake of simplicity, this function checks if a rn is below 50 and a user wins the lottery
    function pickLotteryWinner() external {
        // Question : How can I call a function to get a rn? 
        importSeedFromThird();
        // Question : How can I insert the called rn into the below if else statement?
        if (randomNumber < 50){
            // Transfer the NFT
        else { 
            // If the rn did not pass the threshold, an NFT would not be transferred to the user
            revert NftTransfer_Failed();
        }
        }

    }
}

// as a part of the async function that calls the NiftyKit contract could 
// @Ryoko put together a lottery contract?

// for... 

// When a user purchases the pass they're also entered into a raffle
// to earn an additional NFT that is air dropped to them using NiftyKit