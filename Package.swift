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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230306/TensorFlowLiteC.xcframework.zip", checksum: "4ad7166204cc33146277146a0f30a7f696a1c6da82d7f1b7741c416dc7050c03"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230306/TensorFlowLiteCCoreML.xcframework.zip", checksum: "106d51b142f2ea65e17b13de8ddca3cfab02a9c321e9a31945e140cd0ddb4738"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230306/TensorFlowLiteCMetal.xcframework.zip", checksum: "a226ca4fc3ff4e9f7989fd4bb1b176944a988d4b0689b2aedd86d0e1ac34f551"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
