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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240730/TensorFlowLiteC.xcframework.zip", checksum: "87f44b340fa2d4b69691cb237d5fa0e76b2013007c0eb67d4363e494e452b7c5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240730/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f577fb20010de1512875f4a054a7c127d6880df86247eddb7cca3a24355bb8b4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240730/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef1129f858c427e1e02032a74ca724a766211dd1e0e2941f5fbc00a2de54b28b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
