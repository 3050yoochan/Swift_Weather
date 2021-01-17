# SeoulWeather
개요
-------------
OpenWeatherAPI를 이용한 날씨 앱입니다.

무료 API와 실시간으로 업데이트 되는 정보를 DB에서 추출하여 심플하면서도 세련된 디자인을 자랑합니다.

이 앱을 통해 나가기 전, 날씨를 확인하고 나가보세요!

[iPhone 12, 12 Pro]에 최적화되어있음!

사용된 기술
-------------
Alamofire를 이용하여 JSON 데이터베이스의 문법을 가져왔습니다.

Pod를 이용하여 JSON를 다루기 위한 SwifyJSON 외부 라이브러리를 사용하였습니다.
 
 <pre><code>{※var temp1 = "\(json2["main"]["temp"])"                          //JSON에서 특정 값을 가져오는 파싱입니다.
 let temp1_num = round((temp1 as NSString).doubleValue - 273.15) //temp1 변수는 Data 형식으로 되어 있으므로, Double 값으로 변형합니다.}</code></pre>

사진
-------------
<img src="https://github.com/ycbusiness/SeoulWeather/blob/main/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202021-01-17%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%203.28.29.png" width="450px" height="880px" title="px(픽셀) 크기 설정" alt="RubberDuck"></img><br/>
