# JavaEE-TeamProject
<h1>Steam을 오마주한 종합 게임 판매 사이트</h1>
사전 기획 담당 업무 : 기획서용 ppt 작성, ERD 작성, 클래스 기초 기획<br>
-전체 로직<br>
(1)jsp - controller - service - DAO - mapper로 이어지는 CRUD<br>
(2)jsp에서는 디자이너와의 협업을 위해 기존 javascript 언어가 아닌 jQuery 사용<br>
(3)페이지 전환 여부에 따라 데이터 전송 여부를 비동기와 동기 중 결정<br>
<h2>관리자</h2>
관리자 부분 담당 업무 : 게임 관련 페이지, 매출 관련 페이지, 디자인 마무리<br>
-전체 디자인<br>
(1)w3schools.com의 템플릿을 이용<br>
(2)기능 위주의 간결성을 목표로 한 디자인 추구<br>
-전체 로직<br>
(1)모든 관리자 페이지는 AdminSessionAspect 클래스에 의해 로그인을 하지 않으면 접근이 막아지고 로그인 페이지로 이동됨<br>
(2)모든 목록 페이지는 Pager 클래스를 통해 페이징 
<h3>1.게임 목록 페이지</h3>
<img src="https://postfiles.pstatic.net/MjAxOTA1MjlfMTI4/MDAxNTU5MDY3MzM2NTYw.8yLRZ2dTf9VgLJN5XREY2FdzYkL3eOem6CeGzFGPU4og.M9BK02Y3QE9yqp422liseD8Rsh2SY1vFMjlvpHHi4RAg.PNG.myungjae18/GameListPage.png?type=w773"/>
(1)DB에 있는 모든 게임을 불러옴<br>
(2)게임 이름을 누르면 그 게임의 상세 정보 페이지로 이동<br>
(3)등록을 누르면 게임 등록 페이지로 이동<br>
<h3>2.게임 등록 페이지</h3>
<img src="https://postfiles.pstatic.net/MjAxOTA1MjlfMTQw/MDAxNTU5MDY3MzM2NTQ1.MRBPyeEc1grQUFiRSUxb4n_QncI2NnY0gGXTNEnWwqAg.KPTiIK2NycDc3_QsBw9GhbNZH0KOyF1Uyc-9WP3usvcg.PNG.myungjae18/GameRegistPage.png?type=w773"/>
(1)DB에 있는 카테고리를 불러와 selectBox에 구현<br>
(2)등록 시 공백 및 게임 이름 중복 검사<br>
(3)사진은 multiple 처리하여 여러 개 등록할 수 있으며, 등록 시 서버에 저장<br>
<h3>3.게임 정보 페이지</h3>  
<img src="https://postfiles.pstatic.net/MjAxOTA1MjlfNjgg/MDAxNTU5MDY3MzM2NTU1.8Ibdn_4dqyO_w_o0goZDfrySDl_DnO0zWvwMpeiwIHYg.MNfep4sRuWPMAMYIuE6hSDnWQfPlJyH0t0f_P8ICUgYg.PNG.myungjae18/GameDetailpage.png?type=w773"/>
(1)게임 목록 페이지에서 받아온 request 데이터 안의 게임 정보를 표현<br>
(2)모든 항목은 수정할 수 있으며, 단 게임 이름의 경우 기존에 존재하는 게임들과의 중복 여부 검사<br>
(3)게임을 삭제하면 관련 항목들은 모두 삭제(이벤트에 등록되었을 경우 등록이 자동으로 해제되며 삭제)<br>
(4)사진 수정 시 사진은 0개를 등록하는 경우가 아니라면 모두 가능
<h3>4.매출 차트 페이지</h3>
<img src="https://postfiles.pstatic.net/MjAxOTA1MjlfMjk1/MDAxNTU5MDY3MzM2ODUy.7FGBpTN1enfWq0u0lFNWzSdfTjrbXMCcMnu0cMus6EMg.5L1zZ1Kpx0A-T4ZQJamNnk5fW8Qm5JXZcTUgCr-xv5Mg.PNG.myungjae18/SalesPage_chart.png?type=w773"/>
(1)왼쪽 차트:금일로부터 7일 전까지의 매출 현황을 보여주는 백분율 그래프<br>
(2)오른쪽 차트:가장 많이 팔린 6종의 게임을 많이 팔린 순서대로 보여주는 그래프
<h3>5.매출 목록 페이지</h3>
<img src="https://postfiles.pstatic.net/MjAxOTA1MjlfMTg0/MDAxNTU5MDY3MzM3MDA4.wTEX3hdPe4XGk96MDbmzivUi8WtdqO3-eSrVcJkLd4gg.rAPcyLQIM8h7ej8bhqMStkTD0AusGLEKMZmPkRVRhGIg.PNG.myungjae18/SalesPage_list.png?type=w773"/>
(1)모든 게임의 매출 정보를 표현
<h2>클라이언트</h2>
클라이언트 부분 담당 업무 : 상단 bar, 게임 목록, 게임 상세 정보, 로그인 세션 처리
