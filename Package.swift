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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211009/TensorFlowLiteC.xcframework.zip", checksum: "12e3708bb96b5876ae7b2ff51ea3507e7a9305e079a3f10387281762cb09f6dc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211009/TensorFlowLiteCCoreML.xcframework.zip", checksum: "01952faab5bae001da74de582d9da6771d0e11aadca6bb541321e938236424ea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211009/TensorFlowLiteCMetal.xcframework.zip", checksum: "8472abea020e6fc0b30ce0937b5d37e7213e343a1830f9337b8ab7976f174812"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
