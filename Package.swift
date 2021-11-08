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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211107/TensorFlowLiteC.xcframework.zip", checksum: "d3560c4de459e0b8ae861db119559d6dda3c657deb8eb4eb0a89fbbec7412cc2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211107/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2182b6749f6d852569b4459be08805a4603da7174390b7a87edd536b45c500d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211107/TensorFlowLiteCMetal.xcframework.zip", checksum: "8eabb3fe355ad3f91502798ac8d4c6327102999af3343c90f0bd5d0928727b28"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
