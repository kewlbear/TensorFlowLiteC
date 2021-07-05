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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210704/TensorFlowLiteC.xcframework.zip", checksum: "73e3229aeed43abf064b8cd04e283aebc817831482f9c365500e2560ecd9af79"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210704/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4b5aad9f5f3b32291f8c615d51710f4024e78f2063b883d68e77b4de4dc205b1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210704/TensorFlowLiteCMetal.xcframework.zip", checksum: "e4d67eb4d15ddd4307e5e4902d2e4221bfd684062eb4742ea04e1fe09d23871e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
