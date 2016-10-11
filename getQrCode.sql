-- Peter Valencic, 2016
-- PLSQL function to create QRCode from text

CREATE OR REPLACE function getQRcode(p_text in varchar2) return BLOB as LANGUAGE JAVA    
NAME 'QRCodeGenerator.getQrCode(java.lang.String) return oracle.sql.BLOB';  
/  