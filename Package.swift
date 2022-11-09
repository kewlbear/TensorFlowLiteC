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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221108/TensorFlowLiteC.xcframework.zip", checksum: "844f118e1ae9300975d9d65cc0f39a68df49eaca93c20430559781c195f8e0f6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "124d977601f012b4848d1deb06dfa27233f3a67665efc6605f6be511d1e66edf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221108/TensorFlowLiteCMetal.xcframework.zip", checksum: "d577284eb6efb92c573a1d2d3ca3c4359b21a80b61ea2109ad696de400cab169"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
