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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240107/TensorFlowLiteC.xcframework.zip", checksum: "33b11642c7dbcf3af1a36add8437cbac11baa6b203047b96637f7458e77d4dfc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240107/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8e6b524149204b369a1059283426a9b11bbbe6ead35e74440e7ba61e479d0599"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240107/TensorFlowLiteCMetal.xcframework.zip", checksum: "2e567c26da363134f796fd64ce57ee2b4ce53cec57f84b6f5b68f5dfc6e0002c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
