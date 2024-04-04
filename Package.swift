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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240403/TensorFlowLiteC.xcframework.zip", checksum: "574f8fae4aa2404e994a145b72e9e6567071128100c238c3e3dbd941ef914866"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240403/TensorFlowLiteCCoreML.xcframework.zip", checksum: "52b21298b1172e54751e01347238e1db02414ad2d807c3de7c3550a83f864ba3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240403/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c399ce74de2389983baff22247537a36cf84510392750406c3149ed7ffb4044"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
