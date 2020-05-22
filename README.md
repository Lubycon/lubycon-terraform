# lubycon-terraform #

terraform을 이용하여 Infrastructure as code를 실현합니다.

## Getting Started

terraform과 terragurnt를 실행할 수 있는 환경이라면 어디서든 구동이 가능합니다.
``` sh
$ git clone https://github.com/danielzepp/lubycon-terraform
```

### Prerequisites

이 저장소를 이용하기 위해서는 terraform, terragrunt를 반드시 설치해야합니다.
terraform >= 0.12.25
terragrunt >= 0.22.0
``` sh
# macOS
$ brew install terraform
$ brew install terragrunt
```

## Setting AWS profile
로컬에 저장된 AWS 프로필 명을 terraform 코드에 명시한 프로필 명과 일치시켜야합니다.
AWS profile명은 *{project}-{stack}* 로 통일하여 사용합니다. ex) lubycon-mgmt
``` sh
$ vim ~/.aws/credentials
```
텍스트 에디터를 이용해 aws credentials 파일을 열고, 프로필을 작성합니다.
``` sh
[lubycon-mgmt]
aws_access_key_id = ${YOUR_ACCESS_KEY}
aws_secret_access_key = ${YOUR_SECRET_ACCESS_KEY}
```

## Deployment
인프라를 코드로 작성한 이후 아래와 같이 실제 클라우드 인프라에 배포할 수 있습니다.
```sh
# 예시는 lubycon 서비스의 AWS 인프라중, ap-northeast-2리전에 있는 dev 스택 VPC 세팅입니다.
$ cd ./aws/lubycon/mgmt/Network/ap-northeast-2/vpc
$ terragrunt plan
$ terragrunt apply
```

## Authors

* **daniel_zepp** - https://github.com/danielzepp
