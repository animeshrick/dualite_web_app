import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:js/js.dart' as js;

class HtmlPage extends StatefulWidget {
  HtmlPage({required this.title});

  final String title;

  @override
  _HtmlPageState createState() => _HtmlPageState();
}

const htmlData = """ 

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="./assets/tml.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: #f2f2f2;
            text-align: center;
            overflow: hidden;
        }

        .show-btn {
            position: absolute;
            top: 50%;
            left: 50%;
            user-select: none;
            transform: translate(-50%, -50%);
        }

        .show-btn.disabled {
            pointer-events: none;
        }

        .modal {
            position: absolute;
            right: 0;
            opacity: 0;
            bottom: -100%;
            width: 360px;
            transition: bottom 0.4s, opacity 0.4s;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
        }

        .modal.show {
            bottom: 0;
            opacity: 1;
        }

        .modal .top-content {
            background: #34495e;
            width: 100%;
            padding: 0 0 30px 0;
        }

        .top-content .left-text {
            text-align: left;
            padding: 10px 15px;
            font-size: 18px;
            color: #f2f2f2;
            font-weight: 500;
            user-select: none;
        }

        .top-content .close-icon {
            position: absolute;
            top: 10px;
            right: 20px;
            font-size: 23px;
            color: silver;
            cursor: pointer;
        }

        .close-icon:hover {
            color: #b6b6b6;
        }

        .top-content .fa-camera-retro {
            font-size: 80px;
            color: #f2f2f2;
        }

        .modal .bottom-content {
            background: white;
            width: 100%;
            padding: 15px 20px;
        }

        .bottom-content .text {
            font-size: 28px;
            font-weight: 600;
            color: #34495e;
        }

        .bottom-content p {
            font-size: 18px;
            line-height: 27px;
            color: grey;
        }

        .bottom-content .close-btn {
            padding: 15px 0;
        }

        .show-btn button,
        .close-btn button {
            padding: 9px 13px;
            background: #27ae60;
            border: none;
            outline: none;
            font-size: 18px;
            text-transform: uppercase;
            border-radius: 3px;
            color: #f2f2f2;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.2s;
        }

        .show-btn button {
            padding: 12px 15px;
        }

        .show-btn button:hover,
        .close-btn button:hover {
            background: #26a65b;
        }
    </style>
</head>

<body>
    <div class="show-btn">
        <button>Show Modal</button>
    </div>
    <div class="modal">
        <div class="top-content">
            <div class="left-text">
                Modal Box
            </div>
            <span class="close-icon"><i class="fas fa-times"></i></span>
            <div class="fas fa-camera-retro"></div>
        </div>
        <div class="bottom-content">
            <div class="text">
                Custom Modal Box
            </div>
            <p>
                Create a simple modal box using html and css only.
            </p>
            <div class="close-btn">
                <button>Close Modal</button>
            </div>
        </div>
    </div>

</body>

</html>


 """;

class _HtmlPageState extends State<HtmlPage> {


  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Html(
              data: htmlData,
            ),
            
          ],
        ),
      ),
    );
  }
}
