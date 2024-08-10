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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240809/TensorFlowLiteC.xcframework.zip", checksum: "754b82f6c8756f781e0000a8ec3288bfbef4b2861d9ef0953c40e9bd65e0e7a0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240809/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2dd0dd895e6a085200a54fc358978038a11ab89b04019c2d4cbf33d2af3da29a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240809/TensorFlowLiteCMetal.xcframework.zip", checksum: "0cce3e770c6f7644e0205e89202cce9cebbfdbd164645279cdd88a507048d375"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
