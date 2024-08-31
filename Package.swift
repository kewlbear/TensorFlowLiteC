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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240830/TensorFlowLiteC.xcframework.zip", checksum: "f588e24b097feebfb756214c0204d82c1e6915ff12788b8aafb527f8bb8ea79c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240830/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf9d20af1423c9c29446a97c26de54fecdd223af2cfd7f1c3a120653582cafe1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240830/TensorFlowLiteCMetal.xcframework.zip", checksum: "f2eb876722235d90aad75f99760571869da944d84a3c0d44836ab0055175c4e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
