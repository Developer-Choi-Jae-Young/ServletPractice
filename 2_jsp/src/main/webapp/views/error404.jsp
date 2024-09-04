<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오류 페이지</title>

    <style>
        /* div { border: 1px solid red; } */

        .wrap { 
            height: 100vh; /* vh : 뷰포트 기준 높이 비율 단위 */

            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        #icon-emark {
            border: 2px solid red;
            border-radius: 50px;

            padding: 10px;
            width: 30px;
            height: 30px;

            text-align: center;
            line-height: 30px;

            color: red;
            font-weight: 900;
            font-size: 25px;

            text-shadow: 0px 0px 20px;
            box-shadow: 0px 0px 15px;
        }

        #btn-back {
            border: none;
            width: 200px;
            border-radius: 10px;

            background-color: black;
            color: white;

            padding: 10px;
            margin: 10px;

            cursor:pointer;
        }
    </style>
</head>
<body>
    <div class="wrap">
        <span id="icon-emark">!</span>
        <h3>죄송합니다. 페이지를 찾을 수 없습니다.</h3>
        <p>잘못된 접근입니다. 다시 시도해주세요.</p>
        <button id="btn-back">이전으로</button>
    </div>
</body>
</html>