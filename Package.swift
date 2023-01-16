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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230115/TensorFlowLiteC.xcframework.zip", checksum: "ecff643ce6160efd54d7ce220b395ed659b9a322874fa290e4e2e1cb18c9e13b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "39d2b4979eaef480f0bfa6c78275bb75706f7d40cac5e883cd9f168df26e4113"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230115/TensorFlowLiteCMetal.xcframework.zip", checksum: "511110f6ad559c7a3d25794880d34c66db9cb11c610d911a62ca48cfaa0ee859"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
