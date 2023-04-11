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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230410/TensorFlowLiteC.xcframework.zip", checksum: "8e6467eae74ef1374a59db7a77e25d5d6cd42655979860db9a9252e9221e688b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230410/TensorFlowLiteCCoreML.xcframework.zip", checksum: "95a944cdfc34fdb07089f392b8730413205f5cd9e93a8d3949339ddd8b511dde"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230410/TensorFlowLiteCMetal.xcframework.zip", checksum: "059236a5489cbeb1e88ded750d16b47769d9872091cb812ca6c14c1da6092901"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
