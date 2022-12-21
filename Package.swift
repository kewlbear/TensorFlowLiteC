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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221220/TensorFlowLiteC.xcframework.zip", checksum: "e5bb35a0d2ea440d2404259165839e835724a5e70cd7c439b4434290bb4a6f65"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cade8626eb5aa59bb90bfc5c0f2e1128daa6ab2abade2f0dc9f29dff62b32f6a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221220/TensorFlowLiteCMetal.xcframework.zip", checksum: "7e100735f8ccc94fa73709699c8209e68c0ed8b120f94e3997ddbf3dece7ea07"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
