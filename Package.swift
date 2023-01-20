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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230119/TensorFlowLiteC.xcframework.zip", checksum: "8d8bb7c9282b0d0b396f3eb48e63c548fe26c25836ddaf49e8a6469eeeb419b2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8a3a0c63fc92ea9600eb0ea4cd97d043f1fd5b06490878b44b555c6d7c3bd6dd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230119/TensorFlowLiteCMetal.xcframework.zip", checksum: "22e1cc75ff17f677e5aed27ca1d0c61e60634f90d9ecfa52c4e82785ac0650b9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
