// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

// This is the lottery contract which allows the puchaser of a maze pass to automatically enter into
contract nftLotteryForTheMazePassPurchaser { 

    // Identifying whether a pass has been purchased
    // Alternatively, we can write 9 as event
    bool private _passHasBeenPurchased;
    address purchasedPeople[] private lotteryPlayers;

    /*Events*/
    event LotteryEntered(address indexed player);


    constructor(bool passHasBeenPurchased) {
        _passHasBeenPurchased = passHasBeenPurchased;
    }

    // We are checking whether a user has purchased a pass to join the lottery
    function enterLottery(bool) public payable {
        if  (bool passHasBeenPurchased != "Yes") {
            revert User_HasNotPurchasedThePass();
        }
        lotteryPlayers.push(payable(msg.sender));
        emit LotteryEntered(msg.sender);
    }


    function winLottery() {

    }
}

// as a part of the async function that calls the NiftyKit contract could 
// @Ryoko put together a lottery contract?

// for... 

// When a user purchases the pass they're also entered into a raffle
// to earn an additional NFT that is air dropped to them using NiftyKit
