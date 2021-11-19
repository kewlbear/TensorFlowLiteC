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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211118/TensorFlowLiteC.xcframework.zip", checksum: "b671ba8f20cb6a399d1d280bbd2cbda1b5820bde0c5eff50db4a537a0665c810"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211118/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7b1bab18cd6346cbd161d1d78745f59ebebf5933f3f1e6ec3b837550681940d7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211118/TensorFlowLiteCMetal.xcframework.zip", checksum: "36d5d2fcae51d11ddad96b1d708998c9fa899bcb93f09874242145b17e5404c9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
