# AWS Static Hosting

[![MIT license](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE.txt)

This is a [Terraform] module for hosting a static bundle (i.e. static site or [SPA]) on [AWS] using [S3] and [CloudFront].

## Inputs

See [`variables.tf`](variables.tf).

## Outputs

See [`output.tf`](output.tf).

## Example

The following use of this module creates an [S3] bucket named `example.palmdrive.dev` and an accompanying [CloudFront] distribution with the alias https://example.palmdrive.dev and an associated [CloudFront] function `Example` defined in `./ExampleViewerRequest.js` that filters each request to the [CloudFront] distribution. Afterwards, navigating to https://example.palmdrive.dev serves the file `index.html` from the `example.palmdrive.dev` [S3] bucket.

```terraform
module "example" {
  source = "git@github.com:palm-drive/tf-aws-static-hosting.git"
  domain = "example.palmdrive.dev"
}

resource "aws_cloudfront_function" "example" {
  name    = "Example"
  runtime = "cloudfront-js-1.0"
  comment = "Example CloudFront viewer-request function"
  publish = true
  code    = file("${path.module}/ExampleViewerRequest.js")
}
```

## License

This project is licensed under the terms of the [MIT license](https://en.wikipedia.org/wiki/MIT_License).

[AWS]: https://aws.amazon.com/
[CloudFront]: https://aws.amazon.com/cloudfront/
[S3]: https://aws.amazon.com/s3/
[SPA]: https://developer.mozilla.org/en-US/docs/Glossary/SPA
[Terraform]: https://www.terraform.io/
