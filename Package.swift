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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230326/TensorFlowLiteC.xcframework.zip", checksum: "80e19cf954016d7e622e7e18f122c1b79bf0eac6abd16bf609e11924b3fea7a8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230326/TensorFlowLiteCCoreML.xcframework.zip", checksum: "85476e69ce593d5e42a5994809408a6d31ff0ceb522af4482caead53bb520175"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230326/TensorFlowLiteCMetal.xcframework.zip", checksum: "282fe7d9ee252f96e909091d1ad52436eb7dae50525534a4e90636ff78173134"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
