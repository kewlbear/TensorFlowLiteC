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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210323/TensorFlowLiteC.xcframework.zip", checksum: "a51a7536045020640f4a4071f63477481d65ef3f798c8f9afeee5b45d5055b6c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210323/TensorFlowLiteCCoreML.xcframework.zip", checksum: "152c5c21d85cd2773b476f0ce4c8f1fa6e1dfe9693d0355d52652907bdb86834"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210323/TensorFlowLiteCMetal.xcframework.zip", checksum: "f185d5546adb044f2b60ed07c8158ff70d5a93c1ab5714f387a64d503dd47dd9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
