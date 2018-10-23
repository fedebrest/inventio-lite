<?php

require "fpdf.php";
$db = new PDO('mysql:host=localhost;dbname=inventiolite','root','');

class myPDF extends FPDF{
    function header(){
        $this->image('logo.png',10,6);
        $this->SetFont('Arial','B',14);
        $this->Cell(276,5,'Listado de Inventario',0,0,'C');
        $this->Ln();
        $this->SetFont('Times','',12);
        $this->Cell(276,10,utf8_decode('Librería Shop'),0,0,'C');
        $this->Ln(20);
    }
    function footer(){
        $this->SetY(-15);
        $this->SetFont('Arial','',8);
        $this->Cell(0,10,utf8_decode('Página ').$this->PageNo().'/{nb}',0,0,'C');
    }
    function headerTable(){
        $this->SetFont('Times','B',12);
        $this->Cell(5,10,'Id',1,0,'C');
       // $this->Cell(40,10,'Imagen',1,0,'C');
        $this->Cell(30,10,'Cod. Barras',1,0,'C');
        $this->Cell(60,10,'Nombre',1,0,'C');
        $this->Cell(90,10,utf8_decode('Descripción'),1,0,'C');
        $this->Cell(28,10,utf8_decode('Cant. Mínima'),1,0,'C');
        $this->Cell(28,10,'Precio compra',1,0,'C');
        $this->Cell(25,10,'Precio venta',1,0,'C');
        $this->Cell(15,10,'Stock',1,0,'C');
     //   $this->Cell(60,10,utf8_decode('Presentación'),1,0,'C');
        $this->Ln();
    }
    function viewTable($db){
        $this->SetFont('Times','',12);
        $stmt = $db->query('select * from product');
        while($data = $stmt->fetch(PDO::FETCH_OBJ)){
            $this->Cell(5,10,$data->id,1,0,'C');
         //   $this->Cell(40,10,$data->image,1,0,'L');
            $this->Cell(30,10,$data->barcode,1,0,'L');
            $this->Cell(60,10,$data->name,1,0,'L');
            $this->Cell(90,10,$data->description,1,0,'L');
            $this->Cell(28,10,$data->inventary_min,1,0,'L');
            $this->Cell(28,10,$data->price_in,1,0,'R');
            $this->Cell(25,10,$data->price_out,1,0,'R');
            $this->Cell(15,10,$data->unit,1,0,'R');
        //    $this->Cell(60,10,$data->presentation,1,0,'R');
            $this->Ln();
        }
    }
}

$pdf = new myPDF();
$pdf->AliasNbPages();
$pdf->AddPage('L','A4',0);
$pdf->headerTable();
$pdf->viewTable($db);
$pdf->Output('D','filename.pdf');
