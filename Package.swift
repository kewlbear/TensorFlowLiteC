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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230114/TensorFlowLiteC.xcframework.zip", checksum: "c8fdbaeb70ac0710837da65f10cef62ca25f75b2f9a23de3c8919e9849dd3821"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2dded4ed01ebe92694f2692fbf4cbb41b395bd0a4a7050abb86cbc1aca147a5c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230114/TensorFlowLiteCMetal.xcframework.zip", checksum: "aab8d9e2a1a9be023a6966b6a675042babfb847edbf2930daeb556e3bcd4aa05"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
