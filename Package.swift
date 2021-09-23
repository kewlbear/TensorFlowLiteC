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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210922/TensorFlowLiteC.xcframework.zip", checksum: "39c5ec2296e6f6d13436447e59853a8b80be46d675063ad7cb1dd83a89501e73"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210922/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cea9c0e771e1939299f289119aa3f6c518688f3a2b349580fe0acb01c93cc32c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210922/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef168ee342bd4a1b9254d9866c0df93f38596097730ea3ddc95f8704a7d0bf17"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
