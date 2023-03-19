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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230318/TensorFlowLiteC.xcframework.zip", checksum: "f7a628fde0801bba1adaf594d0f00ec3e14ef3ee41577f3839165a3b2ee12348"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230318/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d51e11c9f394b22fd853ae47be0af1534541ae4ec89f6bc7554adf5126da8336"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230318/TensorFlowLiteCMetal.xcframework.zip", checksum: "79d9b6ae31e56e0f9bac8d7f540087b3bd7b85d4dc80989ee9daffba6599ab89"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
