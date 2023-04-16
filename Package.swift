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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230415/TensorFlowLiteC.xcframework.zip", checksum: "7c03a5f07596ad66c63c2e8b92bf5abf72d6bc2977e499b0845bbe8c04aff20a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230415/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b468c1a7091ba150022921eed906c992779109e06393f1239d9fe965e83d38ea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230415/TensorFlowLiteCMetal.xcframework.zip", checksum: "b556af0c9fb1b425acfce52672a2b1d0e58bb081a6a3c5fb333595a3f204bf9c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
