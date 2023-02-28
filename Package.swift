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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230227/TensorFlowLiteC.xcframework.zip", checksum: "0521883d16e744dd657eff7172bf14ea836a9d194b07f372b9a292aaaea6e138"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230227/TensorFlowLiteCCoreML.xcframework.zip", checksum: "750664f99805ed8f2a58c5a50aba62cd9e4db027d53d6b5e4467ff808f9b8710"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230227/TensorFlowLiteCMetal.xcframework.zip", checksum: "003be66296d75acd7a7a8f090a06c3ea5e9dc1225f4a464c40cbcadecbd97cc3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
