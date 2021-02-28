# lubycon-terraform #

terraform을 이용하여 Infrastructure as code를 실현합니다.

## Getting Started

terraform과 terragurnt를 실행할 수 있는 환경이라면 어디서든 구동이 가능합니다.
``` sh
$ git clone https://github.com/danielzepp/lubycon-terraform
```

### Prerequisites

이 저장소를 이용하기 위해서는 terraform, terragrunt를 반드시 설치해야합니다.
terraform >= 0.12.28
terragrunt >= 0.24.4
``` sh
# macOS
$ brew install terraform
$ brew install terragrunt
```

#### Switch Version

terraform, terragrunt의 버전은 tgenv, tfenv를 이용해 스위칭 하는것이 편합니다.
``` sh
# macOS
$ brew install tfenv
```
tgenv의 설치는 github readme를 참고해주세요.
https://github.com/cunymatthieu/tgenv

tgenv, tgenv를 설치하면 [.terraform-version](https://github.com/tfutils/tfenv#terraform-version-file) [.terragrunt-version](https://github.com/cunymatthieu/tgenv#terragrunt-version) 파일에 저장된 버전을 자동으로 따라갑니다.
만약, 특정 버전이 없다는 에러 메세지가 발생하는 경우 install 명령어를 이용해 쉽게 설치할 수 있습니다.
``` sh
tfenv install ${version}
tgenv install ${version}
```

terraform은 버전 업그레이드가 일괄적으로 이루어질 필요가 없고, 힘들기 때문에 필요에 따라 버전을 다르게 가져갑니다.

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
