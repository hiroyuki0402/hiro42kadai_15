//
//  AddFruitViewController.swift
//  Hiro42Kadai15
//
//  Created by 白石裕幸 on 2021/12/06.
//

import UIKit
class AddFruitViewController: UIViewController {
    @IBOutlet private weak var enterFruitTextField: UITextField!

    private var didTapSave: (String) -> Void = { _ in }
    private var didTapCancel: () -> Void = {}

    func setup(didTapSave: @escaping (String) -> Void, didTapCancel: @escaping () -> Void) {
        self.didTapSave = didTapSave
        self.didTapCancel = didTapCancel
    }

    @IBAction private func executeSaveButton(_ sender: Any) {
        guard let text = enterFruitTextField.text, !text.isEmpty else { return }
        didTapSave(text)
    }

    @IBAction private func executeCancelButton(_ sender: Any) {
        didTapCancel()
    }
}
