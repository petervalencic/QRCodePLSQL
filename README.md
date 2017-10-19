# QRCodePLSQL
Oracle PLSQL QR code generator / Java stored procedure 

# How to install
1.) upload all jar archives in lib folder with loadjava tool to your database

2.) verify that all imported classes are valid

3.) run QrCodeBean.jvs, java stored procedure

4.) run getQrCode.sql, plsql function


# How to use
To get some QR code from text type:

select getQRcode('Some text') from dual

or

declare
  qrCode Blob;
begin
  qrCode := getQRCode('some text');
  .
  .
end;
