### p102 연습문제

#10번
# p : 누적확률
# P(-1<Z<2)
# 표준정규분포인 경우에는 평균과 표준편차를 생략할 수 있다.
# pnorm(2,0,1) -> 평균 0, 표준편차 1
# if 표준정규분포 -> 평균 0, 표준편차 1 생략 가능!!

# P(-1<Z<2)
pnorm(2) - pnorm(-1) #[1] 0.8185946

# P(1.22<Z<1.71)
pnorm(1.71) - pnorm(1.22) #[1] 0.0675995

#11번
# P(Z<=c) = 0.01
qnorm(0.01) #[1] -2.326348

# P(Z>=c) = 0.05
qnorm(0.95) #[1] 1.644854

# P(|Z|<c)=0.99
qnorm(0.995) #[1] 2.575829

# 연습문제 12
# X ~ N(100,36)
# P(90<=X<=110)

# 이번에는 평균 표준편차기 있기 때문에 첫 번째 두 번째 매개변수를 필히 입력해야 한다!
pnorm(110,100,6) - pnorm(90,100,6) #[1] 0.9044193


# p103
# 연습문제 13
# X ~ N(100,8^2)

# P(X>=c) = 0.025
# 매개변수 잘 넣기!!!
qnorm(0.975,100,8) #[1] 115.6797

# P(|X|>=c) = 0.10
c1 = qnorm(0.05,100,8)
c2 = qnorm(0.95,100,8)
c1 #86.84117
c2 #113.1588
# 표준화가 안 되었기 때문에 음수가 아닐 수 있는거!

### cf
sqrt(100) #루트값 계산 함수
abs(-100) #절댓값 계산 함수



# 연습문제 15
# 평균 90, 표준편차 20
pnorm(80,90,20) #[1] 0.3085375
qnorm(0.05,90,20) #[1] 57.10293


### 95p
# ex)6-8

# X ~ B(10,0.5)
# P(2<=X<=4) ?

# 지금의 경우는 이항분포(pbinom) 
#  따라서 2~4 이므로 1까지의 값을 빼야한다!
pbinom(4,10,0.5) - pbinom(1,10,0.5) #[1] 0.3662109

# 이항분포 -> 정규분포 (연속성 수정 x ver)
# 지금의 경우는 정규분포(pnorm), 그대로 빼주기!
pnorm(4,5,sqrt(2.5)) - pnorm(2,5,sqrt(2.5)) #[1] 0.2346548

# 이항분포 -> 정규분포 (연속성 수정 o ver)
# 지금의 경우는 정규분포(pnorm), 그대로 빼주기!
pnorm(4+0.5,5,sqrt(2.5)) - pnorm(2-0.5,5,sqrt(2.5)) #[1] 0.3624865

# '이항분포의 결과값'과 '이항분포->정규분포 with 연속성 수정'의 결과는 거의 유사하다!

### 96p
# ex)6-9
# X ~ B(100,0.5)
# P(20<=X<=40) ?

# by 이항분포(가장 정확한 값)
pbinom(40,100,0.5) - pbinom(19,100,0.5) #[1] 0.02844397

# by 정규분포(not 연속성 수정)
# np = 50
# np(1-p) = 25
pnorm(40,50,5) - pnorm(20,50,5) #[1] 0.02275013

# by 정규분포(with 연속성 수정)
# np = 50
# np(1-p) = 25

### 무조건 연속성 수정해서 계산하기로!

pnorm(40+0.5,50,5) - pnorm(20-0.5,50,5) #[1] 0.02871656


### 97p
# ex) 6-10
# 100명에게 약물 투여
# 0.8의 확률로 면역성 갖게 됨
# 다음 확률을 구하여라

# (1) 74명 미만이 면역성을 갖게 될 확률
# 가장 정확한 값은 아래와 같다.
pbinom(73,100,0.8) #[1] 0.05583272

# by norm with 연속성 수정
# np = 80
# np(1-p) = 80 * 0.2 = 16

# 평균 80, 표준편차 4

pnorm(73.5,80,4) #[1] 0.05208128

# not 수정
pnorm(74,80,4) #[1] 0.0668072

# (2) 74명 이상, 85명 이하가 면역성을 갖게 될 확률
# 가장 정확한 값은 아래와 같다
pbinom(85,100,0.8) - pbinom(73,100,0.8) #[1] 0.8637236

# by norm with 연속성 수정

# 평균 = 80
# 표준편차 = 4

pnorm(85+0.5,80,4) - pnorm(74-0.5,80,4) #[1] 0.863353

# not 연속성 수정
pnorm(85,80,4) - pnorm(74,80,4) #[1] 0.827543

###
# 위 결과들을 비교하였을 때 연속성 수정에서의 값이 실제값과 가장 근사하다!



### 103p
# 연습문제 16

# X ~ B(20,0.6)
# (1) 이항분포표를 이용하여 P(14<=X<=17)의 정확한 확률을 구하여라
pbinom(17,20,0.6) - pbinom(13,20,0.6) #[1] 0.2463992

# (2) 연속성 수정을 하지 않고 (1)의 확률을 정규분포로 구하여라

# 평균  = 20*0.6 = 12
# 분산 = np(1-p) = 12*0.4 = 4.8
# 표준편차 = sqrt(4.8)

pnorm(17,12,sqrt(4.8)) - pnorm(14,12,sqrt(4.8)) #[1] 0.1694158

# (3) 연속성 수정
pnorm(17+0.5,12,sqrt(4.8)) - pnorm(14-0.5,12,sqrt(4.8)) #[1] 0.2407516
 

### 연습문제 17
# p = 0.6
# n = 80

pbinom(47,80,0.6) #[1] 0.4516334


### 연습문제 18
# 평균 2.95
# 표준편차 0.5
# 상위 10프로에 해당하면 장학금

qnorm(0.9,2.95,0.5) #[1] 3.590776


### 연습문제 19
# n = 500
# p = 0.1
# 40개보다 많을 확률?

# 이항분포
1 - pbinom(39,500,0.1) #[1] 0.9449845

# 정규분포
# 평균 50
# 분산 50(0.9) = 45
# 표준편차 sqrt(45)

1 - pnorm(40.5,50,sqrt(45)) #[1] 0.9216381



### 연습문제 21
# 평균 172
# 표준편차 5
# 정규분포 따름
# 170 이하일 확률?

pnorm(170,172,5) #[1] 0.3445783


