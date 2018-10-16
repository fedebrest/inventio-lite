<?php

require "fpdf.php";
$db = new PDO('mysql:host=localhost;dbname=inventiolite','root','livepass');

class myPDF extends FPDF{
    function header(){
        $this->image('logo.png',10,6);
        $this->SetFont('Arial','B',14);
        $this->Cell(276,5,'Listado de Proveedores',0,0,'C');
        $this->Ln();
        $this->SetFont('Times','',12);
        $this->Cell(276,10,utf8_decode('librería Shop'),0,0,'C');
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
        $this->Cell(30,10,'Nombre',1,0,'C');
        $this->Cell(50,10,'Apellido',1,0,'C');
        $this->Cell(90,10,utf8_decode('Dirección'),1,0,'C');
        $this->Cell(30,10,utf8_decode('Teléfono'),1,0,'C');
        $this->Cell(60,10,utf8_decode('Email'),1,0,'C');
        $this->Ln();
    }
    function viewTable($db){
        $this->SetFont('Times','',12);
        $stmt = $db->query('select * from person where kind=2');
			while($data = $stmt->fetch(PDO::FETCH_OBJ)){
				$this->Cell(5,10,$data->id,1,0,'C');
				$this->Cell(30,10,$data->name,1,0,'L');
				$this->Cell(50,10,$data->lastname,1,0,'L');
				$this->Cell(90,10,$data->address1,1,0,'L');
				$this->Cell(30,10,$data->phone1,1,0,'L');
				$this->Cell(60,10,$data->email1,1,0,'L');
				$this->Ln();
			}
    }
}

$pdf = new myPDF();
$pdf->AliasNbPages();
$pdf->AddPage('L','A4',0);
$pdf->headerTable();
$pdf->viewTable($db);
/*$filename = "inventary-".time().".pdf";
$pdf->Output('D',$filename); */
$pdf->Output();
