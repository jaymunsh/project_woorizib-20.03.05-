<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_setting.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <title>우리집 계약서</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, label, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: 'Noto Sans KR', sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 40px;
      color: #FFF;
      z-index: 2;
      line-height: 83px;
      text-shadow: 3px 3px 3px black;
      word-break: keep-all;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px  #669999; 
      }
      .banner {
      position: relative;
      height: 300px;
      /* background-image: url("/uploads/media/default/0001/02/2d2ed84e0a2678357d5885b627ccd03a35d3c54c.jpeg");   */
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.2); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:  #669999;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0  #669999;
      color: #669999;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      .week {
      display:flex;
      justify-content:space-between;
      }
      .colums {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .colums div {
      width:48%;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: relative;
      font-size: 20px;
      color:  #a3c2c2;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid  #669999;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid  #669999;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .flax {
      display:flex;
      justify-content:space-around;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      .submit {
      margin: auto;
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background:  #669999;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      .submit:hover {
      background:  #a3c2c2;
      }


      @media (min-width: 568px) {
      h1{
        font-size: 70px;
      }
      
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
      p{
          width:100%;
      }
    </style>
    <script>
        window.onload = function() {
            var month = new Array("1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월");
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth();
            var currentMonth = month[mm];
            var yyyy = today.getFullYear();
            today = yyyy +'년 '+ currentMonth + ' ' + dd + '일 ';
            document.getElementById('datetoday').value = today;
        }
    </script>
  </head>
  <body>
    <div class="testbox">
      <form action="/">
        <div class="banner">
            <a style="opacity: 0.1;"><img src="../myhome_black.png" width="400"></a>

            <!-- c:if문 타서 -->
            <h1>부동산 월세계약서</h1>
            <!-- 
            <h1>부동산 전세계약서</h1>
            <h1>부동산 매매계약서</h1> 
            -->
            <p style="text-align: right; font-weight: bold; font-size: 150%; bottom:10px; position: absolute;">매물번호:&nbsp;&nbsp;{prp_number}&nbsp;&nbsp;</p>
        </div>
        <br/>
        <p>
        <center>
            우리집 계약 시스템을 활용해주셔서 감사합니다. <br>고객님의 보안을 위해 최선을 다하겠습니다.
        </center>
        </p>
        <br/>

        <p style="font-size: 25px; margin: 30px 0; font-style: italic;">1. 부동산의 표시</p>

        <div class="colums">
          <div class="item">
            <label for="prp_termtype"> 계약종류 <span></span></label>
            <input id="prp_termtype" type="text" name="prp_termtype" readonly value="전세/월세/매매, {dto.prp_termtype}"/>
          </div>
          <div class="item">
            <label for="datetoday"> 계약일<span></span></label>
            <input id="datetoday" type="text" name="datetoday" readonly/>
          </div>

          <div class="item" style="width: 100%;">
            <label for="prp_address">소재지</label><br>
            <input id="prp_address" type="text" name="prp_address" readonly style="width:98%;" value="{prp_address}"/>
          </div>

          <p><b>제 1조</b> 부동산의 임대차에 한하여 임대인과 임차인은 합의에 의하여 임차보증금 및 월세를 아래와 같이 지불하기로 한다.</p>

          <p style="font-size: 25px; margin: 30px 0; font-style: italic;">2. 계약내용</p>

          <div class="item" style="width: 100%;">
            <label for="prp_deposit">보증금</label><br>
            <input id="prp_deposit" type="text" name="prp_deposit" readonly style="width:98%;" value="{prp_deposit}"/>
          </div>
          <div class="item" style="width: 100%;">
            <label for="prp_monthlycost">월세</label><br>
            <input id="prp_monthlycost" type="text" name="prp_monthlycost" readonly style="width:98%;" value="{prp_monthlycost * 0.1}"/>
          </div>

          <p style="font-size: 25px; margin: 30px 0; font-style: italic;">2. 계약내용</p>
          <p><b>제 2조</b> 임대인은 위 상기 부동산을 임대차 목적대로 사용할 수 있는 상태로 하여 {year}년/{month}월/{day}일 까지 임차인에게 인도하며, 전세 기간은 인도일로부터 {prp_rentterm}개월로 한다.</p>
          <p><b>제 3조</b> 임차인은 임대인의 동의없이 상기 부동산의 용도나 구조 등을 변경하거나 전대, 전세권 양도 또는 담보제공을 하지 못하며 전세 목적 이외의 용도에 사용할 수 없다.</p>
          <p><b>제 5조</b> 임차인이 임대인에게 잔금을 지불하기 전 까지는 임대인은 계약금의 2배액을 상환하고 임차인은 계약금을 포기하고 본 계약을 해제할 수 있다.</p>
          <p><b>제 6조</b> 임차인이 2회이상 월세의 지급을 연체하는 경우 임대인은 본 임대차 계약을 해지할 수 있다.</p>
          <p><b>제 7조</b> 임대인 또는 임차인이 본 계약상의 내용을 불이행시 그 상대방은 불이행한 자에 대하여 서면으로 최고하고 계약을 해제할 수 있다. 그리고 계약당사자는 계약해제에 따른 손해보상을 각각 상대방에게 청구할 수 있으며, 손해배상에 대하여 별도의 약정이 없는한 계약금을 손해배생의 기준으로 본다.</p>
          <p><b>제 8조</b> 중개수수료는 본 계약 체결과 동시에 계약 당사자 쌍방이 각각 지불하며, 중개업자의 고의나 과실없이 거래당사자 사정으로 본 계약이 무효, 취소, 해제 되어도 중개수수료는 지급한다.</p>
          <p><b>제 8조</b> 중개대상물확인설명서는 {year}년/{month}월/{day}일 중개의뢰인에게 업무보증관계증서 사본과 함께 교부한다.</p>

          <div class="item">
            <label for="prp_owner">임대인</label>
            <input id="prp_owner" type="text" name="prp_owner" readonly value="{prp_owner}"/>
          </div>
          <div class="item">
            <label for="mem_name">임차인</label>
            <input id="mem_name" type="text" name="mem_name" readonly value="{mem_name}"/>
          </div>
          <div class="item">
            <label for="ctr_rentstartdate">임대 시작일<span>*</span></label>
            <input id="ctr_rentstartdate" type="date" name="ctr_rentstartdate" required/>
          </div>
          <div class="question">
            <label>임대 개월수<span style="all:unset; color: red;">*</span></label><br>
            <div class="question-answer" style="display: inline-flex;">
              <div>
                <input type="radio" value="12" id="radio_1M" name="contracttermM" checked/>
                <label for="radio_1M" class="radio" style="width: 75px;"><span>12개월</span></label>
              </div>
              <div>
                <input  type="radio" value="24" id="radio_2M" name="contracttermM"/>
                <label for="radio_2M" class="radio" style="width: 75px;"><span>24개월</span></label>
              </div>
            </div>
          </div>

          <input class="submit" type="submit" value="계약하기">

        </div>
      </form>
    </div>

    <div class="testbox">
      <form action="/">
        <div class="banner">
            <a style="opacity: 0.1;"><img src="../myhome_black.png" width="400"></a>

            <!-- c:if문 타서 -->
            <h1>부동산 전세계약서</h1>
            <!-- 
            <h1>부동산 전세계약서</h1>
            <h1>부동산 매매계약서</h1> 
            -->
            <p style="text-align: right; font-weight: bold; font-size: 150%; bottom:10px; position: absolute;">매물번호:&nbsp;&nbsp;{prp_number}&nbsp;&nbsp;</p>
        </div>
        <br/>
        <p>
        <center>
            우리집 계약 시스템을 활용해주셔서 감사합니다. <br>고객님의 보안을 위해 최선을 다하겠습니다.
        </center>
        </p>
        <br/>

        <p style="font-size: 25px; margin: 30px 0; font-style: italic;">1. 부동산의 표시</p>

        <div class="colums">
          <div class="item">
            <label for="prp_termtype"> 계약종류 <span></span></label>
            <input id="prp_termtype" type="text" name="prp_termtype" readonly value="전세/월세/매매, {dto.prp_termtype}"/>
          </div>
          <div class="item">
            <label for="datetoday"> 계약일<span></span></label>
            <input id="datetoday" type="text" name="datetoday" readonly/>
          </div>

          <div class="item" style="width: 100%;">
            <label for="prp_address">소재지</label><br>
            <input id="prp_address" type="text" name="prp_address" readonly style="width:98%;" value="{prp_address}"/>
          </div>

          <p><b>제 1조</b> 임차인은 상기 표시 부동산에 대한 임대 보증금을 아래와 같이 임대인에게 지불한다.</p>

          <p style="font-size: 25px; margin: 30px 0; font-style: italic;">2. 계약내용</p>

          <div class="item" style="width: 100%;">
            <label for="prp_leasecost">전세금</label><br>
            <input id="prp_leasecost" type="text" name="prp_leasecost" readonly style="width:98%;" value="{prp_leasecost}"/>
          </div>
          <div class="item" style="width: 100%;">
            <label for="ctr_downpayment">계약금(1%)</label><br>
            <input id="ctr_downpayment" type="text" name="ctr_downpayment" readonly style="width:98%;" value="{prp_leasecost * 0.01}"/>
          </div>
          <div class="item" style="width: 100%;">
            <label for="balance">잔금</label><br>
            <input id="balance" type="text" name="balance" readonly style="width:98%;" value="{prp_leasecost * 0.99}"/>
          </div>

          

          <p><b>제 2조</b> 임대인은 상기 부동산을 전세목적에 사용할 수 있는 상태로 하여 {year}년/{month}월/{day}일 까지 임차인에게 인도하며, 전세 기간은 인도일로부터 {prp_rentterm}개월로 한다.</p>
          <p><b>제 3조</b> 임차인은 임대인의 동의없이 상기 부동산의 용도나 구조 등을 변경하거나 전대, 전세권 양도 또는 담보제공을 하지 못하며 전세 목적 이외의 용도에 사용할 수 없다.</p>
          <p><b>제 4조</b> 전세 계약기간이 종료한 경우 임차인은 상기 부동산을 원상으로 복구하여 임대인에게 인도하여야하며, 임대인은 전세보증금을 임차인에게 반환한다.</p>
          <p><b>제 5조</b> 임차인이 임대인에게 잔금을 지불하기 전 까지는 임대인은 계약금의 2배액을 상환하고 임차인은 계약금을 포기하고 본 계약을 해제할 수 있다.</p>
          <p><b>제 6조</b> 중개수수료와 실비는 본 계약체결과 동시에 임대인과 임차인 쌍방이 각각 지불하여야 하며 중개업자의 과실 없이 거래 당사자 사정으로 본 계약이 해약되어도 중개수수료는 지불한다.</p>

          <div class="item">
            <label for="prp_owner">임대인</label>
            <input id="prp_owner" type="text" name="org" readonly value="{prp_owner}"/>
          </div>
          <div class="item">
            <label for="mem_name">임차인</label>
            <input id="mem_name" type="text" name="org" readonly value="{mem_name}"/>
          </div>
          <div class="item">
            <label for="ctr_rentstartdate">임대 시작일<span>*</span></label>
            <input id="ctr_rentstartdate" type="date" name="ctr_rentstartdate" required/>
          </div>
          <div class="question">
            <label>임대 개월수<span style="all:unset; color: red;">*</span></label><br>
            <div class="question-answer" style="display: inline-flex;">
              <div>
                <input type="radio" value="12" id="radio_1L" name="contracttermL" checked/>
                <label for="radio_1L" class="radio" style="width: 75px;"><span>12개월</span></label>
              </div>
              <div>
                <input  type="radio" value="24" id="radio_2L" name="contracttermL"/>
                <label for="radio_2L" class="radio" style="width: 75px;"><span>24개월</span></label>
              </div>
              <div>
                <input  type="radio" value="36" id="radio_3L" name="contracttermL"/>
                <label for="radio_3L" class="radio" style="width: 75px;"><span>36개월</span></label>
              </div>
              <div>
                <input  type="radio" value="48" id="radio_4L" name="contracttermL"/>
                <label for="radio_4L" class="radio" style="width: 75px;"><span>48개월</span></label>
              </div>
            </div>
          </div>
          
          <input class="submit" type="submit" value="계약하기">

        </div>
      </form>
    </div>

    <div class="testbox">
      <form action="/">
        <div class="banner">
            <a style="opacity: 0.1;"><img src="../myhome_black.png" width="400"></a>

            <!-- c:if문 타서 -->
            <h1>부동산 매매계약서</h1>
            <!-- 
            <h1>부동산 전세계약서</h1>
            <h1>부동산 매매계약서</h1> 
            -->
            <p style="text-align: right; font-weight: bold; font-size: 150%; bottom:10px; position: absolute;">매물번호:&nbsp;&nbsp;{prp_number}&nbsp;&nbsp;</p>
        </div>
        <br/>
        <p>
        <center>
            우리집 계약 시스템을 활용해주셔서 감사합니다. <br>고객님의 보안을 위해 최선을 다하겠습니다.
        </center>
        </p>
        <br/>

        <p style="font-size: 25px; margin: 30px 0; font-style: italic;">1. 부동산의 표시</p>

        <div class="colums">
          <div class="item">
            <label for="prp_termtype"> 계약종류 <span></span></label>
            <input id="prp_termtype" type="text" name="prp_termtype" readonly value="전세/월세/매매, {dto.prp_termtype}"/>
          </div>
          <div class="item">
            <label for="datetoday"> 계약일<span></span></label>
            <input id="datetoday" type="text" name="datetoday" readonly/>
          </div>

          <div class="item" style="width: 100%;">
            <label for="prp_address">소재지</label><br>
            <input id="prp_address" type="text" name="prp_address" readonly style="width:98%;" value="{prp_address}"/>
          </div>

          <p><b>제 1조</b> 위 부동산의 매매에 대하여 매도인과 매수인은 합의에 의하여 매매대금을 아래와 같이 지불하기로 한다.</p>

          <p style="font-size: 25px; margin: 30px 0; font-style: italic;">2. 계약내용</p>

          <div class="item" style="width: 100%;">
            <label for="prp_propertycost">매매금</label><br>
            <input id="prp_propertycost" type="text" name="prp_propertycost" readonly style="width:98%;" value="{prp_propertycost}"/>
          </div>
          <div class="item" style="width: 100%;">
            <label for="ctr_downpayment">계약금(1%)</label><br>
            <input id="ctr_downpayment" type="text" name="ctr_downpayment" readonly style="width:98%;" value="{prp_propertycost * 0.01}"/>
          </div>
          <div class="item" style="width: 100%;">
            <label for="balance">잔금</label><br>
            <input id="balance" type="text" name="balance" readonly style="width:98%;" value="{prp_propertycost * 0.99}"/>
          </div>

          
          <p><b>제 2조</b> 매도인은 매매대금의 잔금 수령과 동시에 매수인에게 소유권이전등기에 필요한 모든 서류를 교부하고 등기절차에 협락하며, 위 부동산은 인도일 {year}년/{month}월/{day}일로 한다. </p>
          <p><b>제 3조</b> 매도인은 위의 부동산에 설정된 저당권, 지상권, 임차권 등 소유권의 행사를 제한하는 사유가 있거나, 제세공과 기타 부담금의 미납금 등이 있을 때에는 잔금 수수일까지 그 권리의 하자 및 부담 등을 제거하여 완전한 소유권을 매수인에게 이전한다. 다만, 승계하기로 합의하는 권리 및 금액은 그러하지 아니하다.</p>
          <p><b>제 4조</b> 위 부동산에 관하여 발생한 수익의 귀속과 제세공과금 등의 부담은 위 부동산의 인도일을 기준으로 하되, 지방세의 납부의무 및 납부책임은 지방세법의 규정에 의한다.</p>
          <p><b>제 5조</b> 매수인이 매도인에게 잔금을 지불하기 전까지 매도인은 계약금의 배액을 상환하고, 매수인은 계약금을 포기하고 본 계약을 해제할 수 있다.</p>
          <p><b>제 6조</b> 매도인 또는 매수인이 본 계약상의 내용에 대하여 불이행이 있을 경우 그 상대방은 불이행한자에 대하여 서면으로 최고하고 계약을 해제할 수 있다. 그리고 계약당사자는 계약해제에 따른 손해배상을 각각 상대방에게 청구할 수 있으며, 손해배상에 대하여 별도의 약정이 없는 한 계약금을 손해배상의 기준으로 본다.</p>
          <p><b>제 7조</b> 중개업자는 매도인 또는 매수인의 본 계약 불 이행에 대하여 책임을 지지 않는다. 또한, 중개수수료는 본 계약체결과 동시에 계약 당사자 쌍방이 각각지불하며, 중개업자의 고의나 과실없이 본 계약이 무효-취소 또는 해제되어도 중개수수료는 지급한다. 공동 중개인 경우에 매도인과 매수인은 자신이 중개 의뢰한 중개업자에게 각각 중개수수료를 지급한다. (중개수수료는 거래가액의 1%로 한다.)</p>
          <p><b>제 8조</b> 매도인 또는 매수인이 본 계약 이외의 업무르 의뢰한 경우 이에 관한 보수는 중개수수료와는 별도로 지급하며 그 금액은 합의에 의한다.</p>
          <p><b>제 9조</b> 중개업자는 중개대상물 확인-설명서를 작성하고 업무보증관계증서(공제증서 등) 사본을 첨부하여 계약체결과 동시에 거래당사자 쌍방에게 교부한다.</p>

          <div class="item">
            <label for="prp_owner">매도인</label>
            <input id="prp_owner" type="text" name="prp_owner" readonly value="{prp_owner}"/>
          </div>
          <div class="item">
            <label for="mem_name">매수인</label>
            <input id="mem_name" type="text" name="mem_name" readonly value="{mem_name}"/>
          </div>
          
          
          <input class="submit" type="submit" value="계약하기">

        </div>
      </form>
    </div>
  </body>
</html>