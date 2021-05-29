# MEV token

Don't like your precious ERC-20 token being used by Flashbots to extract MEV from poor traders? Or even better, want your token to be _only_ usable by Flashbots? I gotchu covered bruh.

Introducing `NoMEVToken` and `OnlyMEVToken`. Simple OpenZeppelin ERC20 tokens that have checks for whether or not the tx originates from a Flashbot. How do you use it? Should be obvious.

If you want more than a token, just inherit from `MEV` and use the `onlyMEV` or `noMEV` modifiers, which feature colorful revert messages.

Enjoy!
