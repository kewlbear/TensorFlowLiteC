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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210509/TensorFlowLiteC.xcframework.zip", checksum: "6beda3e5b2404b170025aafa7e7245dc0f7bd20016144744eba8901eee0f14c3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210509/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0ff42b9d91fef1106ce22b9e70f528b26a964643426917b8489bf61b994e7856"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210509/TensorFlowLiteCMetal.xcframework.zip", checksum: "27d8435d07d7c3adc36092b91da8c6426d94107afd96d0391916e8e53bd486e0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
