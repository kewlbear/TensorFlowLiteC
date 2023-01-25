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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230124/TensorFlowLiteC.xcframework.zip", checksum: "fdf4447dcc9f9fface6972be0cccc062aeaf69cf7ae407618f00eb3c1880afec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5054f2aa1b3455cfae7241a21531a62abc1b4ee7b3e7876f1f263a2456fb0e82"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230124/TensorFlowLiteCMetal.xcframework.zip", checksum: "45f83832998578be450d301899ace24cc32145ecef00edce3f2c432feedc72af"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
