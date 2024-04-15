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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240414/TensorFlowLiteC.xcframework.zip", checksum: "3bb603537c5dd15f076ec1fddcbfd5aca86ee14c89d2bea93c4d1dc8019dba76"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240414/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2cebc89332a7977f15073cb39fb110d6eb27f3149cbea1f3489ab2a7e8f48698"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240414/TensorFlowLiteCMetal.xcframework.zip", checksum: "84bbe0c9a3d435790b6e0a4c44c95df057e6d2ee7227c69a643ed12cf90ceeca"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
