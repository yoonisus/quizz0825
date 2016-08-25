
========================================================
<h1> 8월 25일 정기세션 퀴즈 </h1>
<br>
<h4> 오픈북 테스트입니다. 카페, c9코드 모두 참고하셔도 괜찮습니다. <br>
질문 및 대답 금지입니다. 스스로 해결하는 것이 훨씬 좋습니다! </h4>

0. 초기 설정

    -클론을 하신 뒤엔 다음 세가지 명령어를 bash패널에 써주세요~
    rake db:migrate
    bundle install
    rake db:seed
    
    -이렇게 하시면 db엔 총 세가지 유저가 미리 저장되어 있습니다.
    1. member@gmail.com
    2. writer@gmail.com
    3. admin@gmail.com
    * 비밀번호는 모두 test1234 입니다.
    * 원하시는 유저를 새로 만드셔도 상관 없습니다.
    

1. 디버깅

    1.sign_out이 되지 않는 오류가 있습니다! config-initializers-devise.rb에서 고쳐주시면 됩니다.
    
    2.글을 쓰려하면 ArgumentError in HomeController#write 라는 오류가 뜹니다. 
      app/models/role.rb에서 나는 오류입니다. 저번 내용과 비교하여 고쳐주시면 됩니다.

    Hint: 카페 강의록에서 디버깅 부분을 참고해주세요~


2. 추가할 사항

    -index.html.erb에서 추가할 사항
    
    1. 비로그인 유저에게 nav바에서 sign_up버튼 추가하기
    2. 비로그인 유저에게 글쓰는 공간 가리기
    

    -ability.rb에서 추가할 사항
    
    1. 새로운 권한: moderator 추가
    2. moderator 에겐 모든 Post글에대한 manage권한 부여
    
    Hint: 권한 추가하는 방법은 admin 권한 추가한 것 처럼 elsif 를 이용하시면 됩니다.

    -Rolify (rails c) 에서 추가할 사항

    1. 원하는 한 유저에게 admin 권한 부여
    2. 또다른 한 유저에게 moderator 권한 부여
    
    Hint: User.where("email like ?", "원하는 이메일 주소")
    
    
    -화룡정점

    수정,삭제 버튼을 글쓴이 / admin / moderator 에게만 보이게하기
















