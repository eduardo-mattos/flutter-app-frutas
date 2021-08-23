import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart' as pp;
import 'package:pdf/widgets.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'dart:io';

class PdfSaver{
  final cart;

  PdfSaver(this.cart);

  getProductsWidgeList(){
    List<Widget> list = this.cart.products.value.map((prod) =>  Container(
        width: 300,
        child: Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              Text(prod.amount.toString()+'x '+prod.product.name),
              Text(prod.product.moneyFormatter.format(prod.amount * prod.product.price))
            ]
        )
    )).toList().cast<Widget>();

    return list;
  }

  addPdfMainPage(pdf, productsTextWidgets){
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(
                children: [
                  Text("Comprovante de checkout:"),
                  Text("Produtos"),
                  SizedBox(height: 30),
                  Column(
                      children: productsTextWidgets
                  )
                ]
            ),
          ); // Center
        }));
  }

  saveTempFile(pdf) async{
    var dir = await pp.getApplicationDocumentsDirectory();
    File file = File(dir.path+'checkout.pdf');
    file.writeAsBytes(await pdf.save());

    return dir.path+'checkout.pdf';
  }

  saveFile() async{
    //create a list of products widgets
    List<Widget> productsTextWidgets = this.getProductsWidgeList();
    //create the PDF document
    final pdf = pw.Document();
    //add the main page to the PDF document and insert the products list in it
    this.addPdfMainPage(pdf, productsTextWidgets);
    //saves the file in a temporary folder
    var dir = await this.saveTempFile(pdf);

    //show a dialog to the user
    //the user can select where the file will be stored
    final params = SaveFileDialogParams(sourceFilePath: dir);
    //save the file after choosing the folder
    final filePath = await FlutterFileDialog.saveFile(params: params);

    return filePath;
  }


}