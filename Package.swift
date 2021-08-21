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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210820/TensorFlowLiteC.xcframework.zip", checksum: "94d94bc4def453a940a46fd39b5b34d8ba52331ac0786995a6913b1417ace9b8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210820/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7cec6fb78a1b2a8a32145b7752f432624f86a947a52279bac7022dcc6108ed04"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210820/TensorFlowLiteCMetal.xcframework.zip", checksum: "aad6688a4d85464282b9f9b7dda2cab83167b41601f4346fe0d29b17961b0aeb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
