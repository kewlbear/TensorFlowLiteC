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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteC.xcframework.zip", checksum: "2fdb4fda7f7f07210666033e2449d9b97812832f1c9082668ef7cbbb45a08c43"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c5455ac2232fe4739d23e370688660c7061498c7fc24a1d633881ec52afc7254"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241203/TensorFlowLiteCMetal.xcframework.zip", checksum: "77485c55ea7f0191c90991cf80a91cd2f73e4a372a047846382a6e75e3512ad5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
