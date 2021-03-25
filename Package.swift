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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210324/TensorFlowLiteC.xcframework.zip", checksum: "e9fb91bed352ba00ffea65fdfae4597564230adee9072964edc29a776e06bbc5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210324/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f25267f3c9327b21bb8601f8000f9c50245142e3076c3c7dd5173fd06e003f53"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210324/TensorFlowLiteCMetal.xcframework.zip", checksum: "e88e242b075fceea19b2f4ba020e271c21784b10babaf2516e96013d2bb4a99a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
