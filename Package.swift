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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230215/TensorFlowLiteC.xcframework.zip", checksum: "d340ed2ac8bc4b8baf7b764755c70392c1a35703739277a752a173851a61f12c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "71271f817317ecd58a992f14f70f65bc61dfff3a18abeea0217843bea32c8e7d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230215/TensorFlowLiteCMetal.xcframework.zip", checksum: "5939aff2a889412bc7aec8b5a4ee5a5b50f75cfc35ced253c620795ae5ef40b5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
