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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210712/TensorFlowLiteC.xcframework.zip", checksum: "7d1bddcfdfa23fe8e0cf2a582f370a8b33865961bb92c71fcabdfa51b1549ffc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210712/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f91c47c52b3de1371e18c43efc4396608642310403f0bdd8c3ed2fb2a177aa26"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210712/TensorFlowLiteCMetal.xcframework.zip", checksum: "36836b4285d90ba650e0c8ab2c60ff3f2b6599f6bfecae6968265c03e3c6ffd0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
