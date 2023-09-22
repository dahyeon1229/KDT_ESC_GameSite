<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/phaser/3.60.0/phaser.min.js" integrity="sha512-YQL0GVx/Too3vZjBl9plePRIYsRnd1s8N6QOvXPdZ+JMH2mtRTLQXGUDGjNW6zr1HUgcOIury67IvWe91oeEwQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
    <script src="./js/userrun.js"></script>
    <script src="./js/gamestart_scene.js"></script>
    <style>
        #container{
            width: 1000px;
            height:300px;
            margin:auto;
        }
        #ranking{
            width:1000px;
            height:500px;
            margin:auto;
        }
        .hr{
        	margin:auto;
        	width:1200px;
        }
    </style>
</head>
<body>
    
    <div id="container">
    </div>
    <br>
    <hr class="hr">
    <br>
    <div id="ranking">
        <table class="table">
            <thead>
              <tr>
                <th scope="col">Rank</th>
                <th scope="col">NickName</th>
                <th scope="col">Score</th>
                <th scope="col">Date</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>5012</td>
                <td>23/09/18 00:00:00</td>
              </tr>
              <tr class="table-primary">
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>4918</td>
                <td>23/09/18 00:00:00</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>Larry the Bird</td>
                <td>4918</td>
                <td>23/09/18 00:00:00</td>
              </tr>
            </tbody>
          </table>
    </div>
    <script>
        let option = {
            type:Phaser.AUTO, // 컴퓨터의 상황에 맞게 Game Component (웹 gl) 사용
            parent:"container",
            width:"100%",
            height:"100%",
            physics:{
                default:"arcade", // 경량 엔진 - 성능 좋지만 기능은 조금 부실
                arcade:{
                    gravity:{y:0},
                    debug:false
                }
            },
            scene:[GameStartScene,UserRun] // 클래스 이름 쓰기 - 게임 장면 하나하나 보여주는데 그게 scene - 순서 중요
        };

        let game = new Phaser.Game(option); // 게임 판 열기
    </script>
</body>
</html>