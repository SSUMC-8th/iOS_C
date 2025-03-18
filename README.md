# iOS C

SSUMC 8기 iOS 스터디 C조 - 중앙대

## Member

|우주|나영킴|
|:----------:|:----------:|
|조하은|김나영|

## branch 컨벤션 (규칙)

```zsh
├─main
    ├─egg/main
    │  └─egg/week1
    │  └─egg/week2
```

1. `main/닉네임 브랜치`가 기본 브랜치로 pr 보낼 때 main 브랜치가 아닌 `main/닉네임` 브랜치로 올립니다.
2. 매주 실습, 미션은 각자의 닉네임/main 브랜치를 base 브랜치로 삼아 `닉네임/학습주차 브랜치`를 생성하여 관련 파일을 업로드합니다.
3. 모든 팀원들의 approve를 받으면, pr을 머지합니다. `approve`와 `merge`는 스터디 진행 중에 이루어집니다.

## 디렉터리 컨벤션 (규칙)

``` zsh
├─닉네임
    ├─Week1
    │  └─Week1_Mission.xcodeproj
    ├─Week2
    │  └─Week2_Mission.xcodeproj
```

## 커밋 컨벤션 (규칙)

``` zsh
[egg/week1] 내용
```


<br>

## github와 연결하기

1. 각자 소속되어있는 repo에서 **HTTPS 주소를 복사**
2. **자신의 터미널에서 git 폴더를 생성할 위치로 이동 후, `git clone [HTTPS 주소]` 실행**
- ex) `git clone https://github.com/SSUMC-8th/iOS_A.git`

- **tuist 프로젝트가 생성된 폴더와는 다른 개념입니다. tuist 폴더 안에서 실행하지 마세요! 연결을 하면 폴더 하나가 생기니 원하는 위치 아무곳에 실행해주세요!**
  
3. 그렇다면 해당 위치에 폴더 하나가 생깁니다. **터미널에서 `cd [해당 폴더 이름]` 실행 시, 터미널 디렉터리 주소에 git 표시와 함께 main 라고 뜨게 됩니다.**
- 그렇다면 git 환경에 들어오신 겁니다!
4. mian 브랜치에서 **`git branch [닉네임/main]` 실행**
- ex) `git branch egg/main` 
5. **그 후 바로 `git checkout [자신이 생성한 브랜치 이름]` 실행**
- 브랜치를 생성하는 명령어입니다. 어디 브랜치에서 생성하는지에 따라 브랜치의 위치가 달라지니 따로 공부해보세요! 
- `checkout` 과 `branch` 명령어의 차이를 꼭 따로 공부하세요!

- ex) `git checkout egg/main` 
6. 여기까지 잘 따라오셨다면 터미널에 **로컬주소>[git 표시와 위에서 생성한 브랜치 이름]** 이 뜨게 될겁니다!
7. 이 상태에서 finder를 통해 해당 디렉터리에 직접 가보면 **README 파일** 하나가 있을 겁니다.  여기서 **command + shift + .** 을 누르게 되면 숨겨져 있는 파일을 볼 수 있습니다. (이 단축키는 자주 쓰니까 외우시면 좋습니다. 다시 누르면 꺼집니다. ) 
8. 숨김파일은 살짝 흐리게 보입니다. **.git 과 .github 폴더가 있다면 성공입니다.**
- **이 [닉네임/main] 브랜치가 앞으로 PR을 할때 병합으로 쓰게 될 브랜치니 기억을 잘 해두세요!**
9.  자신의 [닉네임/main 브랜치]에서 각 주차 브랜치를 새로 파면 됩니다. 
- ex) `egg/main`브랜치에서 [egg/week1] 브랜치 생성 후, 해당 브랜치로 이동해서 현재 tuist로 생성한 프로젝트 전부를 복사해서 넣어주세요. 처음 세팅에만 복사 붙여넣기를 하고 후에는 바로 작업하면 됩니다. 지금은 무슨 말인지 몰라도 처음에만 복붙해주고 다음부터는 그대로 쓰면 된다. 정도로 알고 계시면 됩니다. 
10. 그렇게 되면 터미널 주소 옆에 뭐가 뜰텐데, 여기서 이제 우리가 계속 쓰게될 3단계를 사용합니다. 
	- `git add .`
	- `git commit -m "[egg/week1] 내용"`
	- `git push`
- 순서대로 사용한다고 보시면 됩니다. 커밋 메시지는 커밋 컨벤션을 꼭 지켜주세요!
- **만약 여기서 `error: RPC failed; HTTP 400 curl 22 The requested URL returned error: 400`, `send-pack: unexpected disconnect while reading sideband packet` 이런 오류가 뜬다면, `git config http.postBuffer 524288000` 를 터미널에서 실행 후, 다시 push 를 해주시면 됩니다. 이게 뭔지는 직접 찾아보세요!**
11. 완료 되었습니다. 이제 자신이 속한 github repo에 들어가서 브랜치 버튼을 누르면 main, [닉네임/main], [닉네임/week1] 이 있다면 끝 입니다. 이후에 PR을 올리면 되는데 PR은 직접 공부해 보세요. 
- **제일 중요한건 `base: [닉네임/main]` <- `[닉네임/week1]` 병합 방향을 꼭 확인해주세요!**

<br>
여기까지 진행하면서 문제가 되거나 모르겠다면 각자의 스터디 톡방에 올려주세요! 
