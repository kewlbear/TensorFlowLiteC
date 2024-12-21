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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteC.xcframework.zip", checksum: "7c101367297846e09ed15657b0124a47a60ca6c5fcbda18602c43e8da87dd0ec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "141ba9d24399a8672ef860833018b24a1af6eeb4d0e8bd8d4b96886960e86635"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241220/TensorFlowLiteCMetal.xcframework.zip", checksum: "b4bd9b9f91055126987d7d23c7d66dcc3b4afd994fe2a7153cefe893d79613f2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
