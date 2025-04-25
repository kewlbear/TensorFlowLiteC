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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteC.xcframework.zip", checksum: "ef3bcc0de54a542e7e799b7b3505178cf7fe77af588b0561e645f2506265b4a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4b9e5841c1ae3d17b60c9205cc2a715508949c28fb810239a2fa61b5d6390097"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250424/TensorFlowLiteCMetal.xcframework.zip", checksum: "5dafb6ea4935fbddf6f16360b789c73e1c185289676144e791f3dcbf97b74535"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
