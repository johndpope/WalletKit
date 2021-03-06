//
//  ViewController.swift
//  Example
//
//  Created by yuzushioh on 2018/01/01.
//  Copyright © 2018 yuzushioh. All rights reserved.
//

import UIKit
import WalletKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let entropy = "000102030405060708090a0b0c0d0e0f"
        let mnemonic = MnemonicGenerator.create(entropy: entropy)
        print(mnemonic)
        // abandon amount liar amount expire adjust cage candy arch gather drum buyer
        
        let seed = MnemonicGenerator.createSeed(mnemonic: mnemonic)
        print(seed)
        // 3779b041fab425e9c0fd55846b2a03e9a388fb12784067bd8ebdb464c2574a05bcc7a8eb54d7b2a2c8420ff60f630722ea5132d28605dbc996c8ca7d7a8311c0
        
        // By calling initialize, you can now access to your wallet.
        let wallet = Wallet(seed: seed, network: .test)
        print(wallet.privateKey.extended, wallet.publicKey.extended)
        
        // Master private key and master public key generated from the seed.
        // tprv8ZgxMBicQKsPdM3GJUGqaS67XFjHNqUC8upXBhNb7UXqyKdLCj6HnTfqrjoEo6x89neRY2DzmKXhjWbAkxYvnb1U7vf4cF4qDicyb7Y2mNa
        // tpubD6NzVbkrYhZ4Wp54C7wRyqkE6HFDYAf6iDRJUDQtXkLEoot6q7usxxHi2tGW48TfY783vGoZ3ufE5XH9YP86c7X6G3CjMh8Dua1ZTTWyjSa
    }
}
