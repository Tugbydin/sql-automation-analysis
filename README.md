Bu çalışma, DB Fiddle ortamında verilen veri seti kullanılarak hazırlanmıştır.
Veri seti yalnızca 2021 Ocak ayına ait kayıtları içermektedir ve Mart ayına
ilişkin herhangi bir veri bulunmamaktadır.

Bu nedenle 15 Mart için doğrudan sayısal bir hesaplama yapılamamaktadır.
İstenen hesaplama mantığını göstermek amacıyla 15 Ocak tarihi referans
alınmış ve ilgili gün ile önceki iki günün günlük toplamları üzerinden
üç günlük hareketli ortalama hesaplanmıştır.

## Kullanılan Teknolojiler
- PostgreSQL
- Common Table Expressions (CTE)
- Window Functions
