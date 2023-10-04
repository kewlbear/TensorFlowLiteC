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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.14.0/TensorFlowLiteC.xcframework.zip", checksum: "c52510c31eaca4a6360b0860b8afd36ad727c50c56737b0d7e666fe0814c1cc4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.14.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1a0b54d2db6ab1a563096ec479213e81b9257db885264adb06ec8b2fe8376456"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.14.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "7874ef824713effd5c7023eaf4aeba274769cbfe731a727f1dbf6aa22ce36bdc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
