<%-- 
    Document   : texttospeech
    Created on : Oct 1, 2019, 8:57:29 PM
    Author     : dktkd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Text To Speech</title>
        <%
            String s = (String) request.getAttribute("link");
        %>
        <style>
            textarea {
                width: 400px;
            }
        </style>
    </head>
    <body>
        <h1>Text to speech Demo</h1>
        <form name="send" action="textToSpeech" method="POST">
            <textarea id="text" name="alltext" maxlength="500" placeholder="Nội dung (tối đa 500 kí tự)" rows="5"></textarea>
            <br/>
            <input type="submit" value="Bắt đầu">
        </form>
        </br>
        <div class="control">
            <label class="radio">
                <input type="radio" name="banmai">
                Ban Mai
            </label>
            <label class="radio">
                <input type="radio" name="leminh">
                Lê Minh
            </label>
            <label class="radio">
                <input type="radio" name="lannhi">
                Lan Nhi
            </label>
            <label class="radio">
                <input type="radio" name="female">
                Thu Dung
            </label>
            <label class="radio">
                <input type="radio" name="male">
                Cao Chung
            </label>
            <label class="radio">
                <input type="radio" name="hatieumai">
                Hà Tiểu Mai
            </label>
        </div>
        <iframe src="<%=s%>" allow="autoplay" id="iframeAudio">
        </iframe>
        <audio autoplay id="playAudio">
            <source src="<%=s%>">
        </audio>
        <script>
            var isChrome = /Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor);
            if(!isChrome){
                $('#iframeAudio').remove()
            }
            else{
                $('#playAudio').remove() //just to make sure that it will not have 2x audio in the background 
            }
        </script>
    </body>
</html>
