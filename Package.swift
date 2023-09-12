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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230911/TensorFlowLiteC.xcframework.zip", checksum: "4392ab6e449a4689fd6d837d96c2d4c014f37ddd601ede205123aabf7c39d825"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230911/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e8cc6419b494d8ae5fc5672713ab84a8d20c8e8660b35640fa33d22f71510f58"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230911/TensorFlowLiteCMetal.xcframework.zip", checksum: "87dc9e203ae18053cdd09ae116e638a86c9116fbe665ea989aee0db77d612c1a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
