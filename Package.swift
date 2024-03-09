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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240308/TensorFlowLiteC.xcframework.zip", checksum: "a2024b11e1d5351dd8d6d44d104ec65182dc34456c13889d8d99eb130f0300d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240308/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f816bcffc32bf7253f8dd44dab3c6cbe7295b3eefb0758aae02363fbf9088434"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240308/TensorFlowLiteCMetal.xcframework.zip", checksum: "a5d195e5294e8104336ba44139c6f88eb3334e2551e67ec503ab046ad6a034c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
