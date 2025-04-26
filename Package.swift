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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteC.xcframework.zip", checksum: "bed517c1415a353ea22cdea386b606fd0ea35ae43049404fe99727f1afeb79f6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteCCoreML.xcframework.zip", checksum: "29831e8a63464223c75e48e862dda49f54c5ca859b7849a71db48809f4bd2d80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250425/TensorFlowLiteCMetal.xcframework.zip", checksum: "0be8ba0b6436baf6d4ccfacdfef6dfdfbc63a991ef68b276e4873d6183ec8598"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
