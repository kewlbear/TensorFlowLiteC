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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220830/TensorFlowLiteC.xcframework.zip", checksum: "ebe1291e2e89b0a22e60c528809fd526db8cbb45ad28c67cab87eef01fd65bc4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220830/TensorFlowLiteCCoreML.xcframework.zip", checksum: "36631bf551e6c9be12805e73bf903cdc57e4bd88bd65552beeb680d1bd5e3c46"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220830/TensorFlowLiteCMetal.xcframework.zip", checksum: "25ea78ba65556cf3be02fd59027093300ff10336b99a98b417e8112d5d4d29a5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
