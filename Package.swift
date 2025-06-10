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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteC.xcframework.zip", checksum: "0abaae7a9904efb727f762632147e9ddd07af15911e5083f513bb9825de5f672"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6cfb3f7bf6d176159f9f09623f9ab2135205ef28de91c05883f2f10074283f22"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250609/TensorFlowLiteCMetal.xcframework.zip", checksum: "9ae66522e744398d4471975c2f508bab21e4bbe1c2ff66ed217e0802551a83fd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
