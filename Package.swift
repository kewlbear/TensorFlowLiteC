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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230205/TensorFlowLiteC.xcframework.zip", checksum: "f01730c34d24babcb69b10ea7fe47d2f87d57a696adb3dd9c3c864789042a0d3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d516202bfa1720bca8273d21db78ce67e119705f9206624e3f9a895d271fc39c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230205/TensorFlowLiteCMetal.xcframework.zip", checksum: "e35265fa41b13eba85b60aa11b08fc6eebb1cb73f3fac21b24f6125a6dc90ff3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
