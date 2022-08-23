// Copyright (c) 2022, Mysten Labs, Inc.
// SPDX-License-Identifier: Apache-2.0

/// Basic ECDSA contract
module math::ecdsa {
    use sui::crypto;

    public fun keccak256(data: vector<u8>): vector<u8> {
        crypto::keccak256(data)
    }

    public fun ecrecover(signature: vector<u8>, hashed_msg: vector<u8>): vector<u8> {
        crypto::ecrecover(signature, hashed_msg)
    }

    public fun secp256k1_verify(signature: vector<u8>, public_key: vector<u8>, hashed_msg: vector<u8>): bool {
        crypto::secp256k1_verify(signature, public_key, hashed_msg)
    }
}
