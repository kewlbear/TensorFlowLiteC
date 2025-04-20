// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteC.xcframework.zip", checksum: "550d67606f74377b01bb020a8512e5f23c05f8282b3c77ef5d6c458a670719e4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7823d620ac8322f1567705b79ee92e5f56073fa07884d8c36d30ded05f23367c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250419/TensorFlowLiteCMetal.xcframework.zip", checksum: "a00c6bd6f0572409fa8bc7b6a51220b09947041ae4890a5c71151f622ca16bc4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
