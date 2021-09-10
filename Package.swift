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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210909/TensorFlowLiteC.xcframework.zip", checksum: "de30ed308913c1418c6415cab667779edf97bc63f113bed59d3c322e3b6c0d59"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210909/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7acc33196228aa23b576b4501291a541595e55785aa1ff5c37512f8f3d1a1c37"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210909/TensorFlowLiteCMetal.xcframework.zip", checksum: "a0f8f459f2396651f139830427cb3eab7f5ec16d3b8d444c9f7144ba936896f6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
