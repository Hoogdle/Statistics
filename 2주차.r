### 2주차 ###

# ctrl + shift + s 로 실행  


### c()를 이용한 벡터 만들기
# x <-c(4.3,5.9,7.8,3.0,15.7)
# x = c(4.3,5.9,7.8,3.0,15.7) #로도 가능
# x
# x 변수 안에 변수 저장 c는 combine 함수
# 변수는 영문자로만 시작(숫자로 시작 x)

# kor = c(67,83,96,90,85)
# eng = c(55,90,76,99,100)

# with = c(kor,eng) #c를 활용해 두 데이터 세트 결합
# with
# [1]  67  83  96  90  85  55  90  76  99 100 

### seq 함수를 이용한 연속적인 데이터 만들기
# 1:10 #[1]  1  2  3  4  5  6  7  8  9 10 #1부터 10까지 1씩 증가
# seq(from=1,to=10,by=2) #[1] 1 3 5 7 9
# seq(1,10,by=2) #[1] 1 3 5 7 9
# seq(1,10,2) #[1] 1 3 5 7 9


### rep() 함수를 이용한 반복적인 데이터 만들기
# p1는 값(or data) p2는 횟수)
# rep(1,5) #[1] 1 1 1 1 1
# rep(seq(-3,3,by=2),3) # [1] -3 -1  1  3 -3 -1  1  3 -3 -1  1  3
# rep(c(2,3,4),5) # [1] 2 3 4 2 3 4 2 3 4 2 3 4 2 3 4


# a = rep(0,12)
# a #[1] 0 0 0 0 0 0 0 0 0 0 0 0

# a = matrix(rep(0,12),nrow=3)
# a
#      [,1] [,2] [,3] [,4]
# [1,]    0    0    0    0
# [2,]    0    0    0    0
# [3,]    0    0    0    0

### ?{명령어}
# 해당 명령어의 기능을 알 수 있다.(홈페이지 접속됨)


### 예제
# sum = 0
# for (i in 1:100)
# sum=sum+i
# sum #[1] 5050

### scan 함수
# 데이터를 사용자에게 직접 읽을 수 있다., 파일로도 받을 수 있지만 숫자 데이터만 읽을 수 있다.

### read.table() 
# 문자 숫자가 섞인 데이터를 읽을 때 사용


################# 함수 start

### mean() 함수
# 평균을 계산하기 위한 함수



### median()
# 중앙값을 계산하기 위한 함수

### var() (표본에 대한!)
# 분산을 계산하기 위한 함수

### sd() (표본에 대한!)
# 표준편차를 계산하기 위한 함수


