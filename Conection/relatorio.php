<?php
    session_start();
    include("connect.php");
    //include("verificacao.php");

    $query = "select * from produtos";
    $result = mysqli_query( $db, $query);


    // $retorno = mysqli_fetch_array($result);
    // echo $retorno["id_produtos"],"<br>";
    // echo $retorno["nome"],"<br>";
    // echo $retorno["descricao"],"<br>";
    // echo $retorno["preco"],"<br>";

?>
<body>
    
    <table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Valor</th>
        </tr>
    </thead>
<?php
while ($retorno = mysqli_fetch_array($result)){;
?>
    <tr>
        <td><?php echo $retorno["id_produtos"]; ?></td>
        <td><?php echo $retorno["nome"]; ?></td>
        <td><?php echo $retorno["descricao"]; ?></td>
        <td><?php echo $retorno["preco"]; ?></td>
    </tr>
<?php }?>
</body>
</tbody>
    </table>

</body>
</html>