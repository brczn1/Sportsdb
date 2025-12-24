🗃️ Sports Database Management System
📖 Proje Hakkında
Bu proje, çoklu spor dallarını kapsayan kapsamlı bir ilişkisel veritabanı sistemidir. Futbol, basketbol, voleybol, Formula 1, eSpor, NFL, NHL gibi farklı spor branşlarında takımlar, oyuncular, koçlar, ligler ve sponsorluk bilgilerini yönetmek için tasarlanmıştır.

🎯 Kapsam
13 tablo ile normalizasyonu sağlanmış veritabanı şeması

51 takım (19 futbol takımı dahil)

44 oyuncu/sporcu örnek verisi

51 koç/antrenör kaydı

25 farklı sponsorluk anlaşması

26 lig tanımı

18 ülke verisi

3 analitik görünüm (view)

🛠️ Teknik Özellikler
Veritabanı: PostgreSQL

Normalizasyon: 3. Normal Form (3NF)

İlişkiler: Bire-bir, Bire-çok, Çok-çok ilişkiler

View'lar: vw_players_info, vw_coachs_info, vw_teams_info

Sorgular: Karmaşık JOIN'ler, alt sorgular (subqueries), analitik fonksiyonlar

📊 Ana Tablolar
teams - Takım bilgileri ve kuruluş tarihleri

players - Oyuncu demografik ve finansal bilgileri

coachs - Koç profilleri ve maaş bilgileri

branchs - 25 farklı spor branşı

positions - Branşa özel pozisyonlar (59 pozisyon)

leagues - Ulusal ve uluslararası ligler

sponsorships - Sponsorluk anlaşmaları ve değerleri

🔄 İlişki Yapısı
text
Takımlar (N) ↔ (M) Branşlar
Takımlar (N) ↔ (M) Ligler
Takımlar (N) ↔ (M) Sponsorluklar
Oyuncular (N) ↔ (M) Pozisyonlar
Oyuncular (1) ↔ (1) Takımlar (çoğunlukla)
Koçlar (1) ↔ (1) Takımlar
🚀 Öne Çıkan Özellikler
Çoklu branş desteği - Tek veritabanında farklı sporlar

Finansal analiz - Maaş, değer, sponsorluk bedelleri

Demografik raporlama - Cinsiyet, yaş, ülke bazlı sorgular

Gerçek hayat senaryoları - Aktif sporcular ve takımlar

Kapsamlı sorgu örnekleri - Eğitim ve demonstrasyon amaçlı

💡 Kullanım Senaryoları
Spor yönetim sistemleri için temel şablon

SQL eğitimi için gerçekçi örnek veri seti

Veri modelleme ve normalizasyon çalışmaları

İleri SQL sorguları pratiği

Raporlama ve analitik uygulamaları
