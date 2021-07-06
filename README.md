# QRCodePLSQL
Oracle PLSQL QR code generator / Java stored procedure 

# How to install
1.) upload all jar archives in lib folder with loadjava tool to your database:

```
loadjava -force -genmissing -r -user username/password@database -verbose core-1.7.jar
loadjava -force -genmissing -r -user username/password@database -verbose javase-1.7.jar
loadjava -force -genmissing -r -user username/password@database -verbose qrgen-1.2.jar
```

2.) verify that all imported classes are valid

3.) run QrCodeBean.jvs, Java stored procedure (execute the script as a normal pl/sql script)

4.) run getQrCode.sql, plsql function


# How to use
To get some QR code from text type:

`select getQRCode('Some text to be present in QR code') from dual`

and you get

![Optional Text](qrcode.gif)

or

```
declare
  qrCode Blob;
begin
  qrCode := getQRCode('some text');
end;
```

The database function can be used also in oracle Reports to generate QR code
