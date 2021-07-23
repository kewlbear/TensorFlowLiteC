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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210722/TensorFlowLiteC.xcframework.zip", checksum: "daeb29860e306727f14ca59c5d745817c931679f0697d31e164f35ed777329a8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210722/TensorFlowLiteCCoreML.xcframework.zip", checksum: "095b0d3d58ec05bd5595d8b26f01388ff606395c61e68f7151d5deaea9bd7c94"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210722/TensorFlowLiteCMetal.xcframework.zip", checksum: "ff533f29c1ce1cd54ea414b5a3365d92ddaf449f9f06f48d98164961029d664d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
