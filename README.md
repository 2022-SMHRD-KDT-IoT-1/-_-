##  시각장애인의 독립보행 편의를 위한 IoT제품  _"준팡이"_

 > 팀명 : 준비된 인재영


### 0. 기획의도
  > 프로젝트를 시작하면서 IOT 제품을 통해 사회적 불편함을 해소시켜보자라는 취지로 프로젝트의 방향성을 잡았다. 
  > 그 중 우연찮게 시각장애인들이 일상생활 속 느끼는 불편함을 담은 인터뷰를 시청하면서 우리가 제작하려는 IoT제품이 그들의 불편함을 해소시켜 줄 수 있지 않을까 하는 의도로 
  > 프로젝트 산출물인 "준팡이"를 제작하게 되었으며 
  > 사용자의 관점과 그들의 보호자의 관점, 마지막으로 그들의 주위에 있는 타인들의 관점. 
  > 세 개의 관점으로 기능들을 구성하였다. 

---------------------

### 1. 프로젝트 개요
  - 시각장애인의 도보 이동 간 편의 증진을 위한 탈부착형 디스펜서와 옴니휠 제작
  
  
### 2. 주요 기능

  - 초음파 센서를 이용한 장애물 탐지
  - 장애물 탐지 시 진동으로 사용자에게 정보 전달
  - 조도 센서를 통해 일정조도(700) 이하 감지시 LED스트립 점등 (야간에 사용자의 위치를 타 보행자 혹은 운전자에게 알리기 위함.)
  - 실시간 GPS 정보 값 웹 전송
  - SOS버튼 클릭 시 보호자에게 메시지 전송 및 현재 위치 정보 출력
  - 전방향 바퀴(옴니휠)을 부착해 사용자의 이용 간 무게로 인한 부담 축소
 
 
 ### 3. 개발환경
 
  - 사용언어 : Java 1.8 / HTML / CSS / Javascript
  - 개발도구 : eclipse / aduino
  - 서버환경 : tomcatm 8.5
  - 데이터베이스 : oracle 11g



 ### 4. 대표 이미지
 
 ![image](https://user-images.githubusercontent.com/99255481/158326598-5c66694e-0f68-4daa-9ce0-df32bab6dbed.png)
 ### 5. 기능 흐름도
  
  > 디스펜서

![image](https://user-images.githubusercontent.com/99255481/158327219-132e087a-6f62-485c-ba4e-32b6aaf47c21.png)

  > 웹 페이지
  
![image](https://user-images.githubusercontent.com/99255481/158327117-5f09084a-ff9b-450a-9576-51cb30ec61fc.png)


### 6. 사용 부품
![image](https://user-images.githubusercontent.com/99255481/158327431-0d0d8078-9ac1-477d-b91b-118a04e28bb5.png)


### 7. 회로도


![image](https://user-images.githubusercontent.com/99255481/158327472-02205ce2-bf8a-4cad-a143-3826dec04863.png)

### 8. 최종 산출물

  > 준팡이 Mok-Up

![image](https://user-images.githubusercontent.com/99255481/158327528-0096be2c-3439-45f5-bed2-b37631341133.png)


  > 웹 페이지 화면

![image](https://user-images.githubusercontent.com/99255481/158327596-12a9d3c6-eff4-45c9-953d-6ee12509fafd.png)
![image](https://user-images.githubusercontent.com/99255481/158327640-9dfc3452-5179-4100-8e97-c847948e88d5.png)


### 9. 제작일정

|일정|상세내용|
|---|------|
|2.7 ~ 2.15|기획 및 DB 설계|
|2.16 ~ 2.22|데이터 수집 및 화면 설계|
|2.23 ~ 3.3|기능 구현 및 화면 구현|
|3.3 ~ 3.6|발표 준비 및 산출문서 작성|

### 10. 팀 구성원별 업무분장
|이름|역할 및 분담 업무|
|---|------|
|한*희|프로젝트 총괄 / DB기능 구현(Mybatis)|
|오*영|데이터 수집 및 웹 페이지 구성 |
|김*웅|aduino 설계 / 디바이스 기능 제작 및 3D모델링|
|최*훈|웹 페이지 디자인 설계 및 제작 |
|정*비|DB 설계 / 메시징 서비스 구현(COOLSMS API)|


### 제품 시연영상
 
  > 웹 페이지 영상


https://user-images.githubusercontent.com/99255481/159208266-2906ff43-2c13-40d9-8b3b-41847ef020e3.mp4


  > 제품 영상
  
 

https://user-images.githubusercontent.com/99255481/159211304-36de2c77-dd85-40a4-991a-5fdc37a3616e.mp4



