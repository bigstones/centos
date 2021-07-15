# linux

리눅스 사용간 필요한 명령어들 모아두려고 만들었습니다

## 첫 설정
root 계정 비밀번호 설정

    sudo passwd

## 첫 pip 설정

<details>
<summary>접기/펼치기</summary>
<div markdown="1">


    sudo [yum/apt] install epel-release
    sudo [yum/apt] -y update 
    [yum/apt] -y install python-pip
    easy_install-3.6 pip
    
</div>
</details>  

## editor 설정

<details>
<summary>접기/펼치기</summary>
<div markdown="1">

    
    export EDITOR=vim
    export SVN_EDITOR=vim # 꼭하지 않아도 되긴함
    
    export EDITOR=emac
    export SVN_EDITOR=emac
    
    export EDITOR=nano
    export SVN_EDITOR=nano
    

</div>
</details>  

## ssh


<details>
<summary>접기/펼치기</summary>
<div markdown="1">

ssh 접근 시 명령어

    ssh [user]@[IP or Hostname]
    
ssh rsa 로 접근 시 명령어

    ssh -i [rsa_file] [user]@[IP or Hostname]
<!-- 

옵션

 내용

비고 

 -a

 인증 에이전트의 전송을 불허

 

 -c

 세션을 암호화하는데 사용할 암호 해독기를 선택한다.

  idea가 기본값이고,  arcfour가 가장 빠르며, 

  none은 rlogin이나 rsh(암호화 없음)를 사용

 -e 

 세션에 대한 이스케이프 문자를 설정

 

 -f

인증과 전송이 설정된 후에 백그라운드에서 ssh를 설정 

 

 -i

 RSA 인증을 위한 비밀 키를 읽어 올 아이덴티티 파일을 선택

 

 -k

 Kerberos 티켓의 전송을 불허

 

 -l

 원격 시스템에 사용할 로그인 이름을 설정

 

 -n

 ssh가 백그라운드에서 실행될 때 사용되는 /dev/nulls 로 부터의 stdin을 재지정

 

 -o 구성 파일의 형식을 따르는 사용자 정의 옵션 사용  -p 원격 호스트에 있는 연결할 포트 설정  
 -q

 모든 메시지를 억제하는 quiet 모드를 활성화한다.

 

 -P 특권이 부여되지 않은 포트를 사용   -t pseudo-tty 할당을 강제 . 
 -v 

 (디버깅에 유용한) 자세한 정보 표시 모드를 활성화 
 -x

 X11 전송을 불가능하게 한다. 
 -C

 모든 데이터의 압축을 요구한다. 
 -L 

 지정된 원격 호스트와 포트에 전송할 로컬 포트 설정

 
  -R 

로커 호스트와 지정된 포트로 전송될 원격 포트 설정 -->
    
    
</div>
</details>  



## 시간 설정
    
    
<details>
<summary>접기/펼치기</summary>
<div markdown="1">

현재시간 조회

    date

타임존 변경 1

    sudo ln -sf /user/share/zoneinfo/Asia/Seoul /etc/localtime

타임존 변경 2

    sudo timedatectl set-timezone 'Asia/Seoul'

타임존 변경 3

    tzselect
    4
    23

타임존 변경 4
    
    echo "TZ='Asia/Seoul'; export TZ" >> .profile
    source ~/.profile

    
</div>
</details>  

