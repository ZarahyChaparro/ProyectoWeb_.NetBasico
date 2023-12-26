<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoWeb_Basico.Login" %>


<!DOCTYPE html>

<html lang="es">
<head>
    <meta charset="utf-8" />
    <title>Calculadora Web</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
            width: 100%;
            margin: auto;
        }

        h1 {
            color: #333;
        }

        input {
            width: 80%;
            padding: 10px;
            margin-bottom: 10px;
            font-size: 16px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        .result {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <h1>Calculadora Web</h1>
            <input type="text" id="txtNumero1" runat="server" placeholder="Ingrese número 1" />
            <input type="text" id="txtNumero2" runat="server" placeholder="Ingrese número 2" />
            <button type="button" onclick="realizarCalculo()">Sumar</button>
            <div class="result" runat="server" id="lblResultado"></div>
        </div>

        <script>
            function realizarCalculo() {
                var num1 = parseFloat(document.getElementById('<%=txtNumero1.ClientID%>').value);
                var num2 = parseFloat(document.getElementById('<%=txtNumero2.ClientID%>').value);

                if (!isNaN(num1) && !isNaN(num2)) {
                    var resultado = num1 + num2;
                    document.getElementById('<%=lblResultado.ClientID%>').innerText = "Resultado: " + resultado;
                } else {
                    document.getElementById('<%=lblResultado.ClientID%>').innerText = "Ingrese números válidos.";
                }
            }
        </script>
    </form>
</body>
</html>