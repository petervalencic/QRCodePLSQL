# QRCodePLSQL

An Oracle Java Stored Procedure and PL/SQL wrapper designed to generate QR code images directly within an Oracle Database.

---

## Prerequisites

* **Oracle Database** (with Oracle JVM enabled)
* **Oracle Client / Database Tools** (`loadjava` utility)
* **JAR Dependencies** (located in the `lib/` directory):
  * `core-1.7.jar` (ZXing core library)
  * `javase-1.7.jar` (ZXing JavaSE extensions)
  * `qrgen-1.2.jar` (QRGen generator library)

---

## Installation

### 1. Load Java Libraries into Oracle Database

Use the Oracle `loadjava` utility to import the required JAR files from the `lib/` directory into your schema:

```bash
loadjava -force -genmissing -r -user username/password@database -verbose core-1.7.jar
loadjava -force -genmissing -r -user username/password@database -verbose javase-1.7.jar
loadjava -force -genmissing -r -user username/password@database -verbose qrgen-1.2.jar
